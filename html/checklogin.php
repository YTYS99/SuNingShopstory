<?php
header("Content-Type: text/html; charset=utf-8");
require("conn.php");

//获取input信息
$account = $_POST["account"];
$password = $_POST["password"];

$sql = "select * from User where username = '$account' and password = '$password'";
$result =mysql_query($sql);
$row=mysql_fetch_assoc($result);
$Visitors=0;

if(isset($_POST["submit"])){
    if($account == null || $password == null){
        echo '<script>alert("请输入用户名或密码！");history.go(-1);</script>';
    }else{
        if (!empty($row)) {
            session_start();
            $_SESSION["admin"]=true;
            $_SESSION["username"]=$row["username"];
            echo  '<script>window.location.replace("index.php");</script>';
        } else {
            echo '<script>alert("用户名或密码错误！");history.go(-1);</script>';
        }
    }

}
?>