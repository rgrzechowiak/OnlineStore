/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validate() {
  with(document.registration) {
    if(name.value.length == 0) {
      alert("Please enter name");
      return;
    }
    if(username.value.length == 0) {
      alert("Please enter username");
      return;
    }
    if(password.value.length == 0) {
      alert("Please enter password");
      return;
    }
    if(password.value != confirmPwd.value) {
      alert("The two passwords do not match");
      return;
    }
    submit();
  }
}


