function initAudioPlayer() {
    var audio, playbtn, mutebtn, seekslider, volumeslider,
	seeking = false, seekto, curtimetext, durtimetext,
	playlist_status, dir, playlist, playlist_index, ext, agent;

    dir = "audio/";
    playlist = ["No More Night", "4905_20sec", "4933_20sec"];
    playlist_index = 0;
    ext = ".mp3";
    agent = navigator.userAgent.toLowerCase();
    if (agent.indexOf('firefox') != -1 || agent.indexOf('opera') != -1) {
        ext = ".ogg";
    }

    // Set object references
    playbtn = document.getElementById("playpausebtn");
    mutebtn = document.getElementById("mutebtn");
    seekslider = document.getElementById("seekslider");
    volumeslider = document.getElementById("volumeslider");
    curtimetext = document.getElementById("curtimetext");
    durtimetext = document.getElementById("durtimetext");
    playlist_status = document.getElementById("playlist_status");

    //Audio oblect
    audio = new Audio();
    audio.src = dir + playlist[playlist_index] + ext;
    audio.loop = false;
    audio.play();
    playlist_status.innerHTML = "Track " + (playlist_index + 1) + " - " + playlist[playlist_index] + ext;

    // Add Event Handling
    playbtn.addEventListener("click", playPause);
    mutebtn.addEventListener("click", mute);
    seekslider.addEventListener("mousedown", function (event) { seeking = true; seek(event); });
    seekslider.addEventListener("mousemove", function (event) { seek(event); });
    seekslider.addEventListener("mouseup", function () { seeking = false; });
    volumeslider.addEventListener("mousemove", setvolume);
    audio.addEventListener("timeupdate", function () { seektimeupdate(); });
    audio.addEventListener("ended", function () { switchTrack(); });
    // Functions
    function switchTrack() {
        if (playlist_index == (playlist.length - 1)) {
            playlist_index = 0;
        } else {
            playlist_index++;
        }
        playlist_status.innerHTML = "Track " + (playlist_index + 1) + " - " + playlist[playlist_index] + ext;
        audio.src = dir + playlist[playlist_index] + ext;
        audio.play();
    }
    function playPause() {
        if (audio.paused) {
            audio.play();
            playbtn.style.background = "url(images/pause_12px.png) no-repeat";
        } else {
            audio.pause();
            playbtn.style.background = "url(images/play_12px.png) no-repeat";
        }
    }
    function mute() {
        if (audio.muted) {
            audio.muted = false;
            mutebtn.style.background = "url(images/speaker_muted_12px.png) no-repeat";
        } else {
            audio.muted = true;
            mutebtn.style.background = "url(images/speaker_12px.png) no-repeat";
        }
    }
    function seek(event) {
        if (seeking) {
            seekslider.value = event.clientX - seekslider.offsetLeft;
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
        if (cursecs < 10) { cursecs = "0" + cursecs; }
        if (dursecs < 10) { dursecs = "0" + dursecs; }
        if (curmins < 10) { curmins = "0" + curmins; }
        if (durmins < 10) { durmins = "0" + durmins; }
        curtimetext.innerHTML = curmins + ":" + cursecs;
        durtimetext.innerHTML = durmins + ":" + dursecs;
    }
}
window.addEventListener("load", initAudioPlayer);