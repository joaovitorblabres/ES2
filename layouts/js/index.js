function initMap() {

  var myLatLng = {
    lat: -27.1009343,
    lng: -52.615699
  };

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 13,
    center: myLatLng
  });
  var markers = [];
  var infowindow = new google.maps.InfoWindow({maxWidth: 400});

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
}
