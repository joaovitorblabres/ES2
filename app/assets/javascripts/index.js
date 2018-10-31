//Possivel solução para função de busca de locais próximos: https://webdesign.tutsplus.com/pt/tutorials/how-to-add-branded-branch-locations-to-google-maps--cms-20457

function initMap() {
  
  var myLatLng = {
    lat: -27.1009343, 
    lng: -52.615699
  };

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 14,
    center: myLatLng
  });
   //ainda n está pronto
// Using the function to create multiple markers
  geocodeLatLng("52.077937, 4.311377","Apple Store","Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services.");
  geocodeLatLng("52.079572, 4.313265","Ridderzaal","The Ridderzaal is the main building of the 13th century Binnenhof in The Hague, Netherlands. It is used for the state opening of Parliament on Prinsjesdag, when the Dutch monarch drives to Parliament in the Golden Coach and delivers the speech from the throne. It is also used for official royal receptions, and interparliamentary conferences.")
  
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
