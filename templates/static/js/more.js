'use strict'

$('.collapse').on('hidden.bs.collapse', function () {
    player.stopVideo();
})

function play(youtube_key) {
    player.stopVideo();
    player.loadVideoById(youtube_key);
    player.playVideo();
}

/*---------------------------------------------
    YouTube IFrame Player API
    Reference: https://developers.google.com/youtube/iframe_api_reference
---------------------------------------------*/
// 3. This function creates an <iframe> (and YouTube player) after the API code downloads.
var player;
function onYouTubeIframeAPIReady() {
    player = new YT.Player('player', {
        height: '200',
        width: '250',
        // videoId: '0HlE_oRdROo', 
    });
}