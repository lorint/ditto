  var geocoder, location1, location2;
    	function initialize() {
      	geocoder = new GClientGeocoder();
      	showLocation();
    	}
    	function showLocation() {
    		var resp;

    		$.ajax({
    		  type: "GET",
    		  url: "/grab",
    		  dataType: "json",
    		  data: {  },
    		  error: function(e){
    		  	console.log('error');
    		    console.log(e);
    		  },
    		  success: function(data){
    		    console.log('success');
    		    resp = data;

    				var currentUser = resp[1];
    				var currentUserLoc = currentUser.location;

        		geocoder.getLocations(currentUserLoc, function (response) {
        			console.log(response);
        		  if(!response || response.Status.code != 200) {
        		    console.log("Sorry, we were unable to geocode the first address");
        		  }
            		  else {
          		  location1 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
          		  for(x = 0; x < resp.length; x++){
            			var num = 1;
            			var otherUser = resp[x].location;
            			geocoder.getLocations(otherUser, function (response) {
            			  if(!response || response.Status.code != 200) {
            			    console.log("Sorry, we were unable to geocode the second address");
            			  }
            			  else {
            			    location2 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
        		    	    calculateDistance(num, resp, currentUser);
        		    	  }
        		    	  num++;
        		   		});
        		    }
        		  }
        		});
        	}
    		});
    	}
    	function calculateDistance(num, resp, currentUser) {
        try {
          var glatlng1 = new GLatLng(location1.lat, location1.lon);
          var glatlng2 = new GLatLng(location2.lat, location2.lon);
          var miledistance = glatlng1.distanceFrom(glatlng2, 3959).toFixed(1);
          // var kmdistance = (miledistance * 1.609344).toFixed(1);
          var x = num - 1;
          $('body').append("<h3 id='matches' style='color: white;' />");
          $('#matches').html('Matches for ' + currentUser.name);
          if((miledistance < currentUser.radius) && (currentUser.gender != resp[x].gender)){
          	$('body').append("<p id='results"+num+"' style='color: white;' />");
          	$('#results'+num+'').html(resp[x].name);
          }
        }
        catch(error) {
          console.log(error);
        }
    	}
   
