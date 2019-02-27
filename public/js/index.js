//向http://127.0.0.1:3000/index发送get请求
// $.ajax({
//     url:"http://127.0.0.1:3000/index",
//     type:"get",
//     dataType:"json"
// }).then(function(result){
//     var p0=result[0];
//     console.log(p0);
// })

/**
 * 搜索跳转
 */
var $input=$(".t_input");
var $btnSearch=$input.next();
$btnSearch.click(function(){
    if($input.val().trim().length>0){
    location.href="product.html?kwords="+$input.val();
}
});
$input.keyup(function(e){
if(e.keyCode==13){//如果是按回车键就调用查询按钮的处理函数
    $btnSearch.click();//模拟触发
}
})
// 注册跳转
    var free_reg=document.getElementById("free_reg");
    free_reg.onclick=function(){
        var login=document.getElementById("login");
        var reg=document.getElementById("reg");
        login.parentNode.style.display="none";
        reg.style.display="block";

    }



