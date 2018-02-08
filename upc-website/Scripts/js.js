$(document).ready(function () {
    //Play/Pause control clicked
    var video = $('#videoID');
    $('.btnPlay').click(function () {
        if (video[0].paused) {
            $('button').val('Pause Video');
            video[0].play();
        }
        else {
            video[0].pause();
        }
        return false;
    });


    //var obj = $(".source").parentElement;
    //alert($(obj).attr('id'));
    //alert($('video').attr('id'));
    ////var video = $(this).child
    //video.play();
    //});
})