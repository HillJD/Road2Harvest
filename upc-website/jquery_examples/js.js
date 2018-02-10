$(document).ready(function () {
    //Play/Pause control clicked
    var whatImage = 3;
    var video = $('.videoID');
    $('.btnPlay').on('click',function () {
        if (video[whatImage].paused) {
            video[whatImage].play();
        }
        else {
            video[whatImage].pause();
        }
        return false;
    });
})