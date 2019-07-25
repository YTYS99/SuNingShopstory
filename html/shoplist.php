<?php
session_start();//启用，必须在最上面
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="../CSS/shoplist.css"/>
</head>
<body ondragstart="return false;" oncontextmenu="return false;">
<div id="da">
    <?php
    /*连接数据库*/
    @header("Content-Type:text/html;charset=utf-8");//    用utf8格式输出信息
    $conn=mysql_connect("localhost","root","");//    连接数据库
    mysql_query("set names 'utf8'");//    获取输入的信息
    mysql_select_db("shopping",$conn);//选择数据库


    $sql="select * from product li";
    $result=mysql_query($sql) or die('执行失败');

    /*分页*/
    if(isset($_GET['page']) && (int)$_GET['page']>0)
        $Page=$_GET['page'];
    else	$Page=1;
    $PageSize=10;//一页要显示的的记录数
    $RecordCount=mysql_num_rows($result);
    mysql_free_result($result);
    $PageCount =ceil($RecordCount/$PageSize);
    $result=mysql_query($sql, $conn);
    ?>
    <table>
        <?php
        mysql_data_seek($result,($Page-1)*$PageSize);
        for($i=0;$i<$PageSize;$i++){
            $row=mysql_fetch_assoc($result);
            if($row){
                ?>
                <tr id="tr">
                    <td class="imgbox">
                        <?php
                        switch($row['categoryNo']){
                            case 1:  echo "<img src='../img/vivo-1.png'>";   break;
                            case 2:  echo "<img src='../img/vivo-2.png' width='68' height='160'>";   break;
                            case 3:  echo "<img src='../img/vivo-5.png' width='68' height='160'>";   break;
                            case 4:  echo "<img src='../img/vivo-9.png' width='68' height='160'>";   break;
                            case 5:  echo "<img src='../img/vivo-13.png' width='68' height='160'>";   break;
                            case 6:  echo "<img src='../img/vivo-15.png' width='68' height='160'>";   break;
                            case 7:  echo "<img src='../img/vivo-17.png' width='68' height='160'>";   break;
                        }
                        ?>
                    </td>
                    <td class="price"><b>￥<?php echo $row['price']?></b></td>
                    <td class="news"><?php echo $row['card']?></td>
                    <td class="name" style="font-size: 0.7em;margin-top: 10px"><?php echo $row['productName']?></td>
                    <td class="type"><?php echo $row['categoryName']?></td>
                    <td class="number">核数：<?php echo $row['CPU']?></td>

                    <td><!--<a href="JiaMyche.php?shop_name= <?php echo $row['shop_name']?>&shop_type= <?php echo $row['shop_type']?>&shop_price= <?php echo $row['shop_price']?>&shop_code= <?php echo $row['shop_code']?>">加入购物车</a>--></td>
                </tr>

            <?php  } }
        mysql_free_result($result);  ?>
    </table>
    <!--        分页-->
    <p id="fenye"><?php
        if($Page== 1)
            echo  "第一页 ";
        else echo " <a href='?page=1'>第一页</a> <a href='?page=". ($Page-1)."'><</a> ";
        for($i=1;$i<= $PageCount;$i++)	{
            if ($i==$Page) echo "$i  ";
            else echo " <a href='?page=$i'>$i</a> ";}
        if($Page== $PageCount)
            echo  "末页 ";
        else echo " <a href='?page=" . ($Page+1) . "'>></a>
        <a href='?page=" . $PageCount . "'>末页</a> ";
        echo " &nbsp 共&nbsp".$RecordCount. "&nbsp条记录&nbsp";
        echo " $Page / $PageCount 页";
        ?></p>
</div>
</body>
</html>