$(document).ready(function () {
    var v = $(".active").find("video")[0];

    if (v) {
        alert("true");
    }
    else {
        alert("No video found!");
    }
    v.play();
}); 