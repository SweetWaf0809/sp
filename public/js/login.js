
  //登录提交
  $("#btn").click(function(){
    var uname = $("[name=uname]")[0].value;
    var upwd = $("[name=upwd]")[0].value; 
    var unamereg =/^[a-z0-9_]{2,12}$/i;
    var upwdreg = /^[a-z0-9]{6,12}$/i;
    if(!unamereg.test(uname)){
        alert("用户名格式不正确");
    }
    if(!upwdreg.test(upwd)){
        alert("密码格式不正确");
    }
    $.ajax({
      url:"http://127.0.0.1:3000/login",
      type:"get",
      data:{uname,upwd},
      dataType:"json",
    }).then((success)=>{
      var $err=$("#err");
      if(success.code == 1){
        $err[0].innerHTML +="登录成功";
        //成功后跳转主页
        setTimeout(function(){
          location.href="http://127.0.0.1:5500/index.html"
      },1000);
      }else{
        // alert($err[0].html = success.msg);
        $err[0].innerHTML +="用户名或密码不正确";
     
      }
    })

  })

  //登录和注册相切换
var login=document.getElementById("login");
var reg=document.getElementById("reg");
var b=reg.firstElementChild.lastElementChild;
b.onclick=function(){
    reg.style.display="none";
    login.parentNode.style.display="block";
}
var a=login.firstElementChild.lastElementChild;
a.onclick=function(){
    login.parentNode.style.display="none";
    reg.style.display="block";
   


//注册
//登录用户名验证
$("#reg_uname").blur(function(){
  var uname=$(reg_uname)[0].value;
  
  $.ajax({
    url:"http://127.0.0.1:3000/existName",
    type:"get",
    data:{uname},
    dataType:"json",
  }).then((result)=>{
    var $msg=$("#msg");
    var unamereg =/^[a-z0-9_]{3,12}$/i;

    if(result.code == -1){
      $msg[0].innerHTML ="用户名已存在";
    }else{
      if(!unamereg.test(uname.trim())){
 
        $msg[0].innerHTML ="用户名必须介于3~9位之间!";
        return;
      }else{
        $msg[0].innerHTML ="用户名格式正确";
        return;
      }
    }
  });

})

  //密码验证
  $("#reg_upwd").blur(function(){
    var upwd=$(reg_upwd)[0].value;
    var upwdreg = /^[a-z0-9]{6,12}$/i;
    var $msg=$("#msg");

    if(!upwdreg.test(upwd.trim())){

      $msg[0].innerHTML ="用户密码必须介于6~12位之间!";
        return;
    }

  })
$("#reg_btn").click(function(){
  var uname=$(reg_uname)[0].value;
  var upwd=$(reg_upwd)[0].value;
  var unamereg =/^[a-z0-9_]{3,12}$/i;
  var upwdreg = /^[a-z0-9]{6,12}$/i;
  var a=false;
  var b=false;
  if(unamereg.test(uname.trim())){
    a=true;
  }
  if(upwdreg.test(upwd.trim())){
    b=true;
  }
  if(a==true&&b==true){
  $.ajax({
    url:"http://127.0.0.1:3000/reg",
    type:"get",
    data:{uname,upwd}
   
  }).then((result)=>{
if(result.code==1){
  alert("注册成功")
}else{
  alert("注册失败")
}
  })
}

})

}

