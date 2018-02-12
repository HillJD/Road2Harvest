$(document).ready(function () {
    //Play/Pause control clicked
    //var whatImage = 0;
    video = $('.active').children("video"){
        "background-color":"red",
            "border-color": "red",
                "border-width": "3px",
                    "border-style": "solid"
    });;

    console.log("# Video objects= " + video.length);
    
    function playPause() {
    if (video.paused) {
            video.play();
        }
        else {
            video.pause();
        }
        return false;
    };
})