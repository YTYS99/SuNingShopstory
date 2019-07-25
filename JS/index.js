window.onload=function(){
    var box=document.getElementById("li-box2");
    var aLi = box.getElementsByTagName('li');
    for(var i=0,l=aLi.length;i<l;i++){
        aLi[i].onmouseover = function(){
            this.style.background = "white";
            this.getElementsByTagName("a")[0].style.color = "black";
            this.getElementsByTagName("a")[1].style.color = "black";
            this.getElementsByTagName("a")[2].style.color = "black";
            this.getElementsByTagName("a")[3].style.color = "black";
        };
        aLi[i].onmouseout = function(){
            this.style.background = "#252221";
            this.getElementsByTagName("a")[0].style.color = "white";
            this.getElementsByTagName("a")[1].style.color = "white";
            this.getElementsByTagName("a")[2].style.color = "white";
            this.getElementsByTagName("a")[3].style.color = "white";
        }
    }
};
