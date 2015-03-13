// $(document).ready(function (){

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

           var currentUser = resp[0];
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
                 console.log(resp[x]);
                 console.log(resp[x].location);
                 geocoder.getLocations(otherUser, function (response) {
                   if(!response || response.Status.code != 200) {
                     console.log("Sorry, we were unable to geocode the second address");
                   }
                   else {
                     location2 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
                     console.log(otherUser);
                     console.log(location2);
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
         $('body').append("<h3 id='matches' />");
         $('#matches').html('Matches for ' + currentUser.name);
         matchCalculation(num, resp, currentUser, miledistance);
         
       }
       catch(error) {
         console.log(error);
       }
     }
     function matchCalculation(num, resp, user, dist){
     if(num > 0){
       var x = num - 1;
     }
     else {
       var x = num;
     }
     console.log(resp[x].name + ' is ' + dist + ' miles away from ' + user.name);
     console.log(x);
     if (user.id != resp[x].id){
      if((dist < user.radius) && (user.rel_type == resp[x].rel_type)){
       if (user.orientation == resp[x].gender){
         $('body').append("<p id='results"+num+"' />");
         $('#results'+num+'').html(resp[x].name);
       }
       else if (user.orientation == "both"){
         if (resp[x].orientation == "both"){
           $('body').append("<p id='results"+num+"' />");
           $('#results'+num+'').html(resp[x].name);
         }
         else if (resp[x].orientation == user.gender){
           $('body').append("<p id='results"+num+"' />");
           $('#results'+num+'').html(resp[x].name);
         }
       }
     }
   }
 }
// })