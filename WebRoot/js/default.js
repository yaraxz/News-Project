
  function CheckUserInput() 
  {
    var userName = f1.userName.value;
    var userPassword = f1.userPassword.value;
    if(userName == null || userName == "")
    {
    alert("用户名称");
    return false;
  }
  if(userPassword == null || userPassword == "")
  {
  	alert("用户名称");
    return false;
  }
  }