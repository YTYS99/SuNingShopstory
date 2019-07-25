/**
 * Created by admin on 2019/5/10.
 */
$(function() {
    var box = document.getElementById("content");
    var img = box.getElementsByTagName('img');
    var lb = document.getElementById("index");
    var li = lb.getElementsByTagName("li");
    var left1 = document.getElementById("left1");
    var right1 = document.getElementById("right1");
    var pic = document.getElementById("pic");
    var big = document.getElementById("bigbox");
    var ar = new Array("#FDC2A4", "#E5E5E5", "#E9E8EE", "#B51A16", "#3B9589", "#920F14", "#87080F", "#DD2213");
    var timer = setInterval(picLoop, 5000);
    var n = 0;

    function picLoop() {
        n++;
        if (n == 8) {
            n = 0;
        }
        for (var j = 0; j < li.length; j++) {
            li[j].style.backgroundColor = "rgba(255,255,255,0.6)";
            img[j].style.transition = "1.5s";
            img[j].style.opacity = "0";
        }
        li[n].style.backgroundColor = "#FFaa00";
        img[n].style.transition = "1.5s";
        img[n].style.opacity = "1";
        big.style.transition = "1.5s";
        big.style.backgroundColor = ar[n];
    }

    //定时器的控制
    pic.onmouseover = function () {
        clearInterval(timer);
        left1.style.display = "block";
        right1.style.display = "block";
    };
    pic.onmouseout = function () {
        timer = setInterval(picLoop, 5000);
        left1.style.display = "none";
        right1.style.display = "none";
    };

    left1.onclick = function () {
        if (n == 0) {
            n = 8;
            n--;
        } else {
            n--;
        }
        for (var j = 0; j < li.length; j++) {
            li[j].style.backgroundColor = "rgba(255,255,255,0.6)";
            img[j].style.transition = "1.5s";
            img[j].style.opacity = "0";
        }
        li[n].style.backgroundColor = "#FFaa00";
        img[n].style.transition = "1.5s";
        img[n].style.opacity = "1";
        big.style.transition = "1.5s";
        big.style.backgroundColor = ar[n];
    };
    right1.onclick = function () {
        if (n == 7) {
            n = -1;
            n++;
        } else {
            n++
        }
        for (var j = 0; j < li.length; j++) {
            li[j].style.backgroundColor = "rgba(255,255,255,0.6)";
            img[j].style.transition = "2s";
            img[j].style.opacity = "0";
        }
        li[n].style.backgroundColor = "#FFaa00";
        img[n].style.transition = "1.5s";
        img[n].style.opacity = "1";
        big.style.transition = "1.5s";
        big.style.backgroundColor = ar[n];
    };

    for (var m = 0; m < li.length; m++) {
        li[m].index = m;
        li[m].onmouseover = function () {
            for (var j = 0; j < li.length; j++) {
                li[j].style.backgroundColor = "rgba(255,255,255,0.6)";
                img[j].style.transition = "2s";
                img[j].style.opacity = "0";
            }
            var number = this.index;
            this.style.backgroundColor = "#FFaa00";
            img[number].style.transition = "1.5s";
            img[number].style.opacity = "1";
            big.style.transition = "1.5s";
            big.style.backgroundColor = ar[number];
        };
    }
});