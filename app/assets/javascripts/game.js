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
    $.ajax( {
      url: href
    } );
  }
} );

$(document).on('turbolinks:load', function() {
  App.global_chat = App.cable.subscriptions.create({
    channel: "MapChannel"
  }, {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {
      updateMap(data['map']);
    }
  });
  
  var $map = $('#map');
  
  function updateMap(map) {
    for (var i = 0; i < map.length; ++i) {
      var $row = $map.find('tr').eq(i);
      for (var j = 0; j < map[i].length; ++j) {
        var $cell = $row.find('td').eq(j);
        $cell.removeClass()
        $cell.addClass(map[i][j]);
      }
    }
  }
} );