var audio, playbtn, mutebtn, seek_bar, volumeslider, seeking, seekto, durtimetext, curtimetext;
var ext = ".mp3";
/*for firefox or opera that may not support mp3*/
/*var agent = navigator.appName.toLowerCase();*/
/*if(agent.indexOf('firefox')  != -1  || agent.indexOf('opera') != -1) {
 ext = ".ogg";
}*/


function initAudioPlayer() {
    audio = new Audio();
    audio.src = "audio/no more night" + ext;
    /*alert(agent);*/
    audio.loop = true;
    audio.play();

    //Set object references
    playbtn = document.getElementById("playpausebtn");
    mutebtn = document.getElementById("mutebtn");
    seekslider = document.getElementById("seekslider");
    volumeslider = document.getElementById("volumeslider");
    durtimetext = document.getElementById("durtimetext");
    curtimetext = document.getElementById("curtimetext");

    //Add event handling
    playbtn.addEventListener("click", playPause);
    mutebtn.addEventListener("click", mute);
    seekslider.addEventListener("mousedown", function (event) { seeking = true; seek(event); });
    seekslider.addEventListener("mousemove", function (event) { seek(event); });
    seekslider.addEventListener("mouseup", function () { seeking = false; })
    volumeslider.addEventListener("mousemove", setvolume);
    audio.addEventListener("timeupdate", function () { seektimeupdate(); });

    //Functions
    function playPause() {
        if (audio.paused) {
            audio.play();
            playbtn.style.background = "url(images/audio_player/pause_24px_gray.png) no-repeat";
        } else {
            audio.pause();
            playbtn.style.background = "url(images/audio_player/play_24px_gray.png) no-repeat";
        }
    }

    function mute() {
        if (audio.muted) {
            audio.muted = false;
            mutebtn.style.background = "url(images/audio_player/speaker_muted_24px_gray.png) no-repeat"
        } else {
            audio.muted = true;
            mutebtn.style.background = "url(images/audio_player/speaker_24px_gray.png) no-repeat"
        }
    }

    function seek(event) {
        if (seeking) {
            seekslider.value = event.clientX;
            console.log(seekslider.value);
            seekto = audio.duration * (seekslider.value / 100);
            audio.currentTime = seekto;
        }
        }

    function setvolume() {
        audio.volume = volumeslider.value / 100;
    }

    function seektimeupdate() {
        var nt = audio.currentTime * (100 / audio.duration);
        seekslider.value = nt;
        var curmins = Math.floor(audio.currentTime / 60);
        var cursecs = Math.floor(audio.currentTime - curmins * 60);
        var durmins = Math.floor(audio.duration / 60);
        var dursecs = Math.floor(audio.duration - durmins * 60);
        if (cursecs < 10) { cursecs = "0" + cursecs }
        if (dursecs < 10) { dursecs = "0" + dursecs }
        if (curmins < 10) { curmins = "0" + curmins }
        if (durmins < 10) { durmins = "0" + durmins }
        curtimetext.innerHTML = curmins + ":" + cursecs;
        durtimetext.innerHTML = durmins + ":" + dursecs;
    }

}

window.addEventListener("load", initAudioPlayer);
