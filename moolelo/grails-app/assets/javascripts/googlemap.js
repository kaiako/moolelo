var map, geocoder, marker;
function showMap() {
    var style = []

    var options = {
        zoom:7,
        center:  new google.maps.LatLng(20.7114, -157.7964),
        mapTypeId: google.maps.MapTypeId.HYBRID,
        disableDefaultUI: false
    };

    map = new google.maps.Map($('#map')[0], options);
    map.setOptions({
        styles: style
    });    
    geocoder = new google.maps.Geocoder();
    marker = new google.maps.Marker({
        map: map,
        position:  new google.maps.LatLng(20.7114, -157.7964),
        draggable:true,
        title:"Drag me!"
    });
}

function codeAddress(address, callback) {
	var lat,lng;
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        map.setCenter(results[0].geometry.location);
        map.setZoom(15);
        if(marker)
        	marker.setMap(null);
        marker = new google.maps.Marker({
            map: map,
            position: results[0].geometry.location,
            draggable:true,
            title:"Drag me!"
        });
        google.maps.event.addListener(marker,'dragend',function(event) {
            callback(event.latLng.lat(), event.latLng.lng());
        });
  	  	lat = results[0].geometry.location.lat();
  	  	lng = results[0].geometry.location.lng();
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
	  callback(lat,lng);
    });
    
  }


//      function(point) {
//        if (!point) {
//          alert(address + " not found");
//        } else {
//          map.setCenter(point, 15);
//          var marker = new GMarker(point, {draggable: true});
//          map.addOverlay(marker);
//          GEvent.addListener(marker, "dragend", function() {
//            marker.openInfoWindowHtml(marker.getLatLng().toUrlValue(6));
//          });
//          GEvent.addListener(marker, "click", function() {
//            marker.openInfoWindowHtml(marker.getLatLng().toUrlValue(6));
//          });
//          GEvent.trigger(marker, "click");
//        }
//      }


