$(function(){
//获得地址栏中的search部分  将search按=切割，取第2部分
var search=location.search;
if(search!==""){
  var lid=search.split("=")[1];
  console.log(lid)
}



// 实现省和市的级联下拉列表
var cities=[
    [
      {"name":'东城区',"value":101},
      {"name":'西城区',"value":102},
      {"name":'海淀区',"value":103},
      {"name":'朝阳区',"value":104}
    ],
    [
      {"name":'河东区',"value":201},
      {"name":'河西区',"value":202},
      {"name":'南开区',"value":303}
    ],
    [
      {"name":'石家庄市',"value":301},
      {"name":'廊坊市',"value":302},
      {"name":'保定市',"value":303},
      {"name":'唐山市',"value":304},
      {"name":'秦皇岛市',"value":304}
    ]
];
//1. 查找触发事件的元素
var selProvs=
  document.getElementsByName("provs")[0];
//2. 绑定事件: 
        //当(选中项)改变 
selProvs.onchange=function(){
  var selProvs=this;
  //alert(selProvs.value);
  //获得当前       选中的(项在select元素中的)位置
  var i=selProvs.selectedIndex;
  //查找要修改的select cities
  var selCts=
    document.getElementsByName("cities")[0];
  if(i>0){//如果选中的不是第1项请选择时
    i--;//-1修正为对应子数组的位置:
    var cts=cities[i];//获取子数组:  
    //在添加新内容之前，要清空现有内容:
    //selCts.innerHTML="";
    //selCts.options.length=0;
    selCts.length=0;
    //创建文档片段: 
    var frag=document.createDocumentFragment();
    //创建<option>-请选择-,并临时添加到frag中
    //var opt=document.createElement("option");
    //opt.innerHTML="-请选择-";
    frag.appendChild(new Option("-请选择-"));
    //遍历获得的子数组cts中每个城市对象c
    for(var c of cts){
      //每遍历一个城市，就创建一个option
      //var opt=document.createElement("option")
      //设置c的name和value为option的内容和value
      //opt.innerHTML=c.name;
      //opt.value=c.value;
      //将opt临时加入frag中
      frag.appendChild(
        new Option(c.name,c.value))
    }
    //将frag一次性加入selCts中
    selCts.appendChild(frag);
    selCts.className="";
  }else selCts.className="hide";
}

//放大镜
var moved=0;
var $imgLeft=$("#img_left");
var $imgRight=$("#img_right");
var $imgUl=$("#s_img_ul");
$imgRight.click(function(){
  if(!$(this).is(".disabled")){
  moved++;
  $imgUl.css("margin-left",-92*moved)
 
  $imgLeft.removeClass("disabled");
    if(moved==2){
      $(this).addClass("disabled");
    }
  }
})

$imgLeft.click(function(){
  if(!$(this).is(".disabled")){
  moved--;
  $imgUl.css("margin-left",-92*moved);
  $imgRight.removeClass("disabled");
  if(moved==0){
    $(this).addClass("disabled");
  }
}
})


$(".mask").mouseover(function(){
  $("#imgs").show();
  $(".m_img").show();
})
var $lImg=$(".l_img");
var $mImg=$(".m_img");






$(".mask").mousemove(function(e){
var top=e.offsetY-70.5;
var left=e.offsetX-70.5;
  if(top<0){
    top=0;
  }else if(top>353.5){
    top=353.5;

  }
  if(left<0){
    left=0;
  }else if(left>353.5){
    left=353.5;
    $mImg.css({top,left});
  }
  var mask=document.getElementById("imgs");
  mask.style.top=top+"px";
  mask.style.left=left+"px";
  var igDiv=document.getElementsByClassName("m_img")[0];
  
  igDiv.style.backgroundPosition=-2*left+"px -"+2*top+"px";//大图片随着小图片移动
 
})
$(".mask").mouseout(function(){
  $("#imgs").hide()
  $(".m_img").hide()})



})