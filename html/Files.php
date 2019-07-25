<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="../img/user-logo.png">
    <title>文件</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <script src="../JS/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function() {
            $('tr:odd').addClass('odd');
            $('tr:even').addClass('even');

            $('tr').mouseover(function(){
                $(this).addClass('tr1');
            });

            $('tr').mouseout(function(){
                $(this).removeClass('tr1');
            });
        });
        </script>
    <style>
        body{
            margin: 0 0;
        }
        html,body{
            height: 100%;
        }
        .odd {
            background-color: rgb(255,255,255);
        }

        .even {
            background-color: #f9f9f9;
        }

        .tr1{
            background-color:#f5f5f5;
        }
        .table{
            width: 90%;
            height: 70%;
            position: relative;
            margin: 0 auto;
            box-shadow: 5px 5px 5px 5px #cccccc;
        }
        .table-hover tr{
            height: 30px;
        }
    </style>
</head>
<body>
<?php
$files=array('checklogin.php','conn.php','counter.txt','Files.php','index.php','insertre.php','login.php','lunbo.php','register.php');
?>
<table class="table table-hover">
        <tr align="center">
            <td width="20%">文件名称</td>
            <td width="10%">文件扩展名</td>
            <td width="10%">文件属性</td>
            <td width="35%">路径</td>
            <td width="5%">大小</td>
            <td width="20%">最后修改时间</td>
        </tr>
    <?php
    foreach($files as $value){
        ?>
        <tr align="center">
            <td width="20%"><?php echo basename($value);?></td>
            <?php $patharr=pathinfo($value);?>
            <td width="10%">.<?php echo $patharr['extension'] ?></td>
            <td width="10%"><?php echo filetype($value) ?></td>
            <td width="35%"><?php echo realpath($value)?></td>
            <td width="5%"><?php echo filesize($value)?></td>
            <td width="20%"><?php echo date('Y-m-d H:i:s',filectime($value)) ?></td>
        </tr>
    <?php
    }
    ?>
</table>
</body>
</html>