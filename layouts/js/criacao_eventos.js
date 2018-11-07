function initMap() {

  var myLatLng = {
    lat: -27.1009343,
    lng: -52.615699
  };

  var map = new google.maps.Map(document.getElementById('mapouter'), {
    zoom: 13,
    center: myLatLng
  });
  var markers = [];
  var infowindow = new google.maps.InfoWindow({maxWidth: 300});

  function geocodeLatLng(location,title,body) {
    var geocoder = new google.maps.Geocoder;
    var input = location;
    var latlngStr = input.split(',', 2);
    var latlng = {lat: parseFloat(latlngStr[0]), lng: parseFloat(latlngStr[1])};
    geocoder.geocode({'location': latlng}, function(results, status) {
      if (status === google.maps.GeocoderStatus.OK) {
        if (results[1]) {
          var marker = new google.maps.Marker({
            position: latlng,
            map: map
          });
          markers.push(marker);

          marker.addListener('click', function() {
            infowindow.setContent("<h3>" + title + "</h3>" + "<p>" + body + "</p>");
            infowindow.open(map, marker);
          });

        } else {
          window.alert('No results found');
        }
      } else {
        window.alert('Geocoder failed due to: ' + status);
      }
    });
  }
  google.maps.event.addListener(map, 'click', function(event) {
    if(markers.length == 0){
      var lat = event.latLng.lat();
      var lng = event.latLng.lng();
      document.getElementById('lati').value = lat;
      document.getElementById('long').value = lng;
      placeMarker(event.latLng);
    } else {
      alert("Já foi adicionada uma localização\nUtilize o botão direito para remover e adicionar outra!");
    }
  });
  google.maps.event.addListener(map, 'rightclick', function(event) {
    removeLast();
    document.getElementById('lati').value = 0;
    document.getElementById('long').value = 0;
  });
  function removeLast(location) {
    markers[markers.length-1].setMap(null);
    markers.pop();
  }

  function placeMarker(location) {
      var marker = new google.maps.Marker({
          position: location,
          map: map
      });
      markers.push(marker);
  }

  $(".mdl-button--colored").click(function(){
    if(markers.length == 0){
      alert("É necessário adicionar um marcador para seu evento");
    }
  });
}
