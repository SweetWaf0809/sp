$(function(){
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
    /**
 * 搜索跳转数据接收
 * 
 */
var $input=$(".t_input");
if(location.search.indexOf("kwords")!=-1){
  $input.val(
    decodeURI(//将编码后的字符串解码为原文
      location.search.split("=")[1]
    )
  )
}
// 分页查找
function loadPage(pno=0){
var kwords=decodeURI(location.search.split("=")[1]);
//console.log(kwords);

$.ajax({
    url:"http://127.0.0.1:3000/products",
    type:"get",
    data:{kwords,pno},
    dataType:"json",
    success:function(output){
       // console.log(output)
       var {products,pageCount}=output;
       var html="";
       for(var p of products){
        var {img_url,title,price,ori_price}=p;
           html+=`<div class="list">
           <img src="${img_url}" alt="">
           <p>${title}</p>
           <p>
               <span>￥${price}</span>
               <span>￥${ori_price}</span>
           </p>
           <div class="btns"> 
              <button>-</button>
               <input type="text" value="1">
               <button>+</button>
               <button>加入购物车</button>
               <button>收藏</button>
           </div>
       </div>`
       }
       $(".pro_list").html(html);
$(".pro_list>div").click(function(){
    location.href="details.html"
})
       //分页按钮
       html=`<li><a href="javascript:;">上一页</a></li>`;
       for(var i=0;i<pageCount;i++){
           html+=i!=pno?` <li><a href="javascript:;">${i+1}</a></li>`: `<li class="actived"><a href="javascript:;">${i+1}</a></li>`
       }
       html+=` <li><a href="javascript:;">下一页</a></li>`;
       $(".page ul").html(html);
       var $firstLi=$(".page ul>li:first");
       if(pno==0){
           $firstLi.addClass("disabled");
       }
       var $lastLi=$(".page ul>li:last");
       if(pno==pageCount-1){
           $lastLi.addClass("disabled")
       }
    }
})
}
 loadPage();
$(".page ul").on("click","li",function(e){
    e.preventDefault();
    var pno;
    var $a=$(this).children();
    if($a.html()=="上一页"){
        var i=parseInt($(".page ul>li.actived>a").html());
        pno=i-2;
    }else if($a.html()=="下一页"){
        var i=parseInt($(".page ul>li.actived>a").html());
        pno=i;
    }else{

   pno=$a.html()-1;
}
loadPage(pno)
})













})