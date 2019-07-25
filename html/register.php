
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="shortcut icon" href="../img/user-logo.png">
    <title>注册</title>
    <link rel="stylesheet" href="../CSS/register.css" type="text/css">
</head>
<body>
<div class="head">
    <div class="box">
        <img src="../img/logo.png" width="200" height="94">
        <p>依据《网络安全法》，为保障您的账户安全和正常使用，请尽快完成手机号绑定验证！<span style="color: red">《隐私政策》</span>已上线，将更有利于保护您的个人隐私。</p>
    </div>
</div>

<div class="connect">
    <form action="insertre.php" method="post">
        <div  class="login-box"  id="login-box">
            <p>帐号注册</p>

            <div class="div-user" >
                <div class="icon-user"><img src="../img/user.png" width="20" height="20" style="margin-top: 20%"/></div>
                <input type="text" class="user" placeholder="请输入用户名" name="username" autocomplete="off"/>
            </div>

            <div class="div-user" style="margin-top:5px;">
                <div class="icon-user"><img src="../img/ps.png" width="20" height="20"  style="margin-top: 20%"/></div>
                <input type="password" class="user" placeholder="请输入密码" name="password" id="password"/>
            </div>

            <div class="div-user" style="margin-top:5px;">
                <div class="icon-user"><img src="../img/ps.png" width="20" height="20"  style="margin-top: 20%"/></div>
                <input onblur="blur2()" type="password" class="user" placeholder="请确认密码" name="password1" id="password1" />
                <script>
                    function blur2() {
                        var ps = document.getElementById("password").value;
                        var ps1 = document.getElementById("password1").value;
                        if (ps != ps1) {
                            alert("两次输入密码不同！");
                            document.getElementById("password1").value="";
                        }
                    }
                </script>
            </div>


            <div class="div-user" style="margin-top:5px;">
                <div class="icon-user"><img src="../img/emai.png" width="20" height="20"  style="margin-top: 20%"/></div>
                <input type="email" class="user" placeholder="请输入邮箱号" name="email" autocomplete="off"/>
            </div>


            <div class="div-user" style="margin-top:5px;">
                <div class="icon-user"><img src="../img/tel.png" width="20" height="20"  style="margin-top: 20%"/></div>
                <input onblur="blur1()" type="tel" class="user" placeholder="请输入手机号"
                       name="tel" autocomplete="off" id="tel" maxlength="11" />
                <script>
                    function blur1(){
                        var re = document.getElementById("tel").value;
                            if(isNaN(re)){
                                alert("电话格式错误！");
                                document.getElementById("tel").value="";
                            }else if(re.length<11 && re.length>0){
                                alert("请输入11位电话号码！");
                                document.getElementById("tel").value="";
                            }
                         }
                </script>
            </div>



            <div class="div-user" style="margin-top:5px;">
                <div class="icon-user"><img src="../img/sex.png" width="20" height="20"  style=";margin-top: 20%"/></div>
                <select name="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </div>


            <div class="div-user" style="margin-top:5px;">
                <div class="icon-user"><img src="../img/date.png" width="20" height="20"  style="margin-top: 20%"/></div>
                <input type="number" class="user" name="age" placeholder="请输入年龄" autocomplete="off"/>
            </div>


            <div class="btn">
                <input class="login" name="submit1" type="submit" value="注册" onclick="ck()">
                <script>
                    function ck() {
                        var box = document.getElementById("login-box");
                        var ipt = box.getElementsByTagName('input');
                        for(var i=0;i<ipt.length;i++) {
                            if (ipt[i].value == null) {
                                alert("注册信息中含有空信息！");
                            }
                        }
                    }
                </script>
            </div>

            <div class="btn2">
                <input class="login1" name="reset" type="reset" value="重置">
            </div>
        </div>
    </form>
</div>

<!--脚注内容显示-->
<div class="foot-box">
    <div class="foot-connect">
        <p>
            <a>苏宁互联</a><span>|</span>
            <a>苏宁金融</a><span>|</span>
            <a>苏宁支付</a><span>|</span>
            <a>pp视频</a><span>|</span>
            <a>红孩子</a><span>|</span>
            <a>苏宁物流</a><span>|</span>
            <a>手机苏宁</a><span>|</span>
            <a>零售云</a><span>|</span>
            <a>苏宁云</a><span>|</span>
            <a>知识产权举报</a><span>|</span>
            <a>投资者关系</a>
        </p>
        <p>
            <a>联系我们</a><span>|</span>
            <a>诚聘英才</a><span>|</span>
            <a>供应商入驻</a><span>|</span>
            <a>广告平台</a><span>|</span>
            <a>苏宁联盟</a><span>|</span>
            <a>苏宁招标</a><span>|</span>
            <a>友情链接</a><span>|</span>
            <a>隐私政策</a><span>|</span>
            <a>用户体验提升计划</a><span>|</span>
            <a>股东会员认证</a>
        </p>
        <p>
            <a>Copyright© 2019-4，易涛参考苏宁主页仿制，最终解释权归易涛所有</a><span>|</span>
            <a>苏公网安备 32010xxxxxx8号</a><span>|</span>
            <a>苏ICP备10xxxx51号-4</a>
        </p>
        <p>
            <a>合字B2-20xxxx25</a><span>|</span>
            <a>合字A1.B1.B2-20xxxx17</a><span>|</span>
            <a>出版物经营许可证新出发苏批字第A-2xx号</a><span>|</span>
            <a>互联网药品信息服务资格证书（苏）-非经营性-2019-xx05</a>
        </p>
        <p>
            <a>经营证照</a><span>|</span>
            <a>医疗器械网络交易服务第三方平台备案凭证-（苏）网械平台备字（2019）第0xxx2号</a><span>|</span>
            <a>网络文化经营许可证：苏网文〔2019〕1xx0-2xx号</a>
        </p>
        <p>本网站直接或间接向消费者推销商品或者服务的商业宣传均属于"广告"(包装及参数、售后保障等商品信息除外)</p>
    </div>
</div>
</body>
</html>