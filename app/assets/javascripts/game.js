/* global $ */
var left_arrow = 37;
var up_arrow = 38;
var right_arrow = 39;
var down_arrow = 40;

function getAction( key ) {
  switch ( key ) {
    case left_arrow:
      return "left";
    case up_arrow:
      return "up";
    case right_arrow:
      return "right";
    case down_arrow:
      return "down";
    default:
      return "";
  }
}

$(document).keyup( function( event ) {
  var action = getAction( event.which );
  if ( action != "" ) {
    var href = $("#" + action).attr("href") + ".json";
      $.ajax({
      url: href,
      success: function( data ) {
        window.location.reload();
      }
    });
  }
} );