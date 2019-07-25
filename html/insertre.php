<?php
require("conn.php");
$username=$_POST["username"];
$password=$_POST["password"];
$email=$_POST["email"];
$tel=$_POST["tel"];
$sex=$_POST["sex"];
$date=$_POST["age"];

$sql = "insert into User(username,password,email,tel,sex,date) VALUES ('$username','$password','$email','$tel','$sex','$date')";
$result=mysql_query($sql);

if(isset($_POST["submit1"])){
    if ($result) {
        echo "<script>alert('注册成功！')</script>";
        echo "<script>window.location='index.php'</script>";
    }else{
        echo "<script>alert('注册失败！');</script>";
    }
}
?>