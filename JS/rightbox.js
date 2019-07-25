/**
 * Created by admin on 2019/5/15.
 */
function changeImg(){

    //右边悬浮导航内容
    var user = document.getElementById("user-icon");
    var news = document.getElementById("r-news");
    var money = document.getElementById("money");
    var history11 = document.getElementById("history");
    var qiandao = document.getElementById("qiandao");
    var zixun = document.getElementById("zixun");
    var fangkui = document.getElementById("fangkui");
    var sys = document.getElementById("sys");
    var top11 = document.getElementById("top11");

    user.onmouseover = function () {
        document.getElementById("user").src = "../img/right-user-hover.png";
    };
    user.onmouseout = function () {
        document.getElementById("user").src = "../img/right-user.png";
    };
    news.onmouseover = function () {
        document.getElementById("news").src = "../img/right-news-hover.png";
        document.getElementById("news-box").style.backgroundColor = "#FFAA01";
        document.getElementById("a").style.color = "#000000";
    };
    news.onmouseout = function () {
        document.getElementById("news").src = "../img/right-news.png";
    };


    money.onmouseover = function () {
        document.getElementById("money1").src = "../img/right-money-hover.png";
        document.getElementById("money-box").style.backgroundColor = "#FFAA01";
        document.getElementById("a1").style.color = "#000000";
    };
    money.onmouseout = function () {
        document.getElementById("money1").src = "../img/right-money.png";
    };
    history11.onmouseover = function () {
        document.getElementById("history1").src = "../img/right-history-hover.png";
        document.getElementById("history-box").style.backgroundColor = "#FFAA01";
        document.getElementById("a2").style.color = "#000000";
    };
    history11.onmouseout = function () {
        document.getElementById("history1").src = "../img/right-history.png";
    };
    qiandao.onmouseover = function () {
        document.getElementById("qiandao1").src = "../img/right-qiandao-hover.png";
        document.getElementById("qiandao-box").style.backgroundColor = "#FFAA01";
        document.getElementById("a3").style.color = "#000000";
    };
    qiandao.onmouseout = function () {
        document.getElementById("qiandao1").src = "../img/right-qiandao.png";
    };


    zixun.onmouseover = function () {
        document.getElementById("zixun1").src = "../img/right-zixun-hover.png";
        document.getElementById("zixun-box").style.backgroundColor = "#FFAA01";
        document.getElementById("a4").style.color = "#000000";
    };
    zixun.onmouseout = function () {
        document.getElementById("zixun1").src = "../img/right-zixun.png";
    };
    fangkui.onmouseover = function () {
        document.getElementById("fangkui1").src = "../img/right-fangkui-hover.png";
        document.getElementById("fangkui-box").style.backgroundColor = "#FFAA01";
        document.getElementById("a5").style.color = "#000000";
    };
    fangkui.onmouseout = function () {
        document.getElementById("fangkui1").src = "../img/right-fangkui.png";
    };
    sys.onmouseover = function () {
        document.getElementById("sys1").src = "../img/right-sys-hover.png";
        document.getElementById("sys-box").style.backgroundColor = "#FFFFFF";
        document.getElementById("a6").style.color = "#000000";
    };
    sys.onmouseout = function () {
        document.getElementById("sys1").src = "../img/right-sys.png";
    };
    top11.onmouseover = function () {
        document.getElementById("top1").src = "../img/right-top-hover.png";
        document.getElementById("top-box").style.backgroundColor = "#FFAA01";
        document.getElementById("a7").style.color = "#000000";
    };
    top11.onmouseout = function () {
        document.getElementById("top1").src = "../img/right-top.png";
    };
};