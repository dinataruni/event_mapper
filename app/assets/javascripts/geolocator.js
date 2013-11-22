$(document).ready(function(e){

  var map;

  function initialize()
  {
    var mapProp = {
      zoom:15,
      mapTypeId:google.maps.MapTypeId.ROADMAP
    };
    map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
  }

  google.maps.event.addDomListener(window, 'load', initialize);

  if (navigator.geolocation){
    navigator.geolocation.getCurrentPosition(savePosition);
  }
  else{
    $("#location").html("Geolocation is not supported by this browser.")
  };


  function savePosition(position){
    $.ajax({
      dataType: "json",
      url: "set_session",
      data: { latitude: position.coords.latitude, longitude: position.coords.longitude},
      success: showPosition(position)
    });
  }

  function showPosition(position){
    initialLocation = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);
    map.setCenter(initialLocation);
  };


});