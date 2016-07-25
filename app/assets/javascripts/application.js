// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
/* insert bootstrap here */
//= require bootstrap
//= require turbolinks
//= require_tree .
function pick_player()
{
    var radios = document.getElementsByName('playerButton');
    
    for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
            // do whatever you want with the checked radio
            document.getElementById("player_field").value = radios[i].value;
            // only one radio can be logically checked, don't check the rest
            break;
        }
    }
}