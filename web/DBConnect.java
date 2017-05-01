/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myBean;

/**
 *
 * @author Max
 */

import java.sql.*;



public class DBConnect {
  String username = "root";
  String password = "";
  String url = "jdbc:mysql://localhost:3306/test";
  String driver = "com.mysql.jdbc.Driver";
  Connection conn;
  Statement stm;
  PreparedStatement pstm;
  ResultSet rst;
  ResultSetMetaData rsmd;

  private String open() {
    try {
      Class.forName(driver);
      conn = DriverManager.getConnection(url, username, password);
    } catch (Exception e) {
      return e.getMessage();
    }
    return "DB opened";
  }

  private void close() {
    try {
      conn.close();
    } catch (Exception e) {
    }
  }

  public String updateDB(String sql) {
    try {
      String message = open();
      if (message.equals("DB opened")) {
        stm = conn.createStatement();
        stm.executeUpdate(sql);
        stm.close();
        close();
        return "update Successful";
      } else {
        return message;
      }
    } catch (Exception e) {
      return e.getMessage();
    }
  }

  public String queryDB(String sql, String ... args) {
    String CsvMessage = "";
    int columns;
    try {
      String message = open();
      if (message.equals("DB opened")) {
        pstm = conn.prepareStatement(sql);
        int j=1;
        for (String d : args) 
          pstm.setString(j++, d);
        rst = pstm.executeQuery();
        rsmd = rst.getMetaData();
        columns = rsmd.getColumnCount();
        while (rst.next()) {
          for (int i = 1; i <= columns; i++) {
            CsvMessage += rst.getString(i) + ", ";
          }
          CsvMessage += "<br>";
        }
        close();
        return CsvMessage;
      } else {
        return message;
      }
    } catch (Exception e) {
      return e.getMessage();
    }
  }
}
