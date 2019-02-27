const express=require("express");
const router=express.Router();
const pool=require("../pool");
//路由
//用户登录
router.get('/',(req,res)=>{
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    //创建sql
    var sql="select count(uid) as c from sp_user where uname=? and upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        var c = result[0].c;
        if(c == 1){
            res.send({code:1,msg:"登录成功"});
        }else{
            res.send({code:-1,msg:"用户名或密码有误"})
        }
    })
 
 })
 module.exports=router;