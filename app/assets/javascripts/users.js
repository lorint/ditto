$.ajaxSettings.dataType = "json";

$(document).ready(function (){


	///// User Places Choice Functions Start /////
	var a = 1;
  var idx1 = 0;
  var idx2 = 0;
  var idx3 = 0;
  $('#test1').submit(function (event){
    var business = $('#yelp_bus1').val();
    ajaxCall(event, business, 1, idx1);
  })
  $('#test2').submit(function (event){
    var business = $('#yelp_bus2').val();
    ajaxCall(event, business, 2, idx2);
  })
  $('#test3').submit(function (event){
    var business = $('#yelp_bus3').val();
    ajaxCall(event, business, 3, idx3);
  })

 	function ajaxCall(event, business, num, idx){
    var location = $('#yelp_loc').val();
    event.preventDefault();
    $.ajax({
      type: "GET",
      url: "/yelp_api_search",
      dataType: "json",
      data: { location: location, business: business },
      error: function(e){
        console.log(e);
      },
      success: function(data){
        if(num == a){
          localStorage.setItem('sentResp', JSON.stringify(data));
          yelpResp(num, idx);
        }
      },
    });
  }

  function yelpResp(num, idx){
    var receivedResp = localStorage.getItem('sentResp');
    var resp = JSON.parse(receivedResp);

    if(num == a){
      buildDiv(num, idx);
    }
    $('#title'+num+'').html(resp.businesses[idx].name);
    $('#link'+num+'').attr('href', resp.businesses[idx].url);
    $('#image'+num+'').attr('src', resp.businesses[idx].image_url);
    $('#add'+num+'_pt1').html(resp.businesses[idx].location.address[0]);
    $('#add'+num+'_pt2').html(resp.businesses[idx].location.city + " " + resp.businesses[idx].location.postal_code);
  }

  function buildDiv(num, idx){
    a++;
    $('body').append("<div class='container' id='container"+num+"' />");
    $('#container'+num+'').append("<h1 class='title' id='title"+num+"' />",
                                  "<div class='img_add_cont' id='img_add_cont"+num+"' />",
                                  "<button class='answer' id='no"+num+"' type='button' />",
                                  "<button class='answer' id='yes"+num+"' type='button' />");
    $('#img_add_cont'+num+'').append("<a id='link"+num+"' />", "<p class='address' id='address"+num+"' />");
    $('#link'+num+'').append("<img class='image' id='image"+num+"' />");
    $('#address'+num+'').append("<span id='add"+num+"_pt1' />", ", <br>", "<span id='add"+num+"_pt2' />");
    $('#yes'+num+'').html('Correct');
    $('#no'+num+'').html('Incorrect');

    $('#yes1').click(function (){
      $('#yelp_bus1').remove();
      $('#button1').remove();
      $('#no1').remove();
      $('#yes1').remove();
      $('#test2').removeClass('hidden');
      yelpPost(idx1);
    });
    $('#yes2').click(function (){
      $('#test2').remove();
      $('#no2').remove();
      $('#yes2').remove();
      $('#test3').removeClass('hidden');
      yelpPost(idx2);
    });
    $('#yes3').click(function (){
      $('#test3').remove();
      $('#no3').remove();
      $('#yes3').remove();
      $('#yelp_loc').remove();
      yelpPost(idx3);
    });

    $('#no1').click(function (){
      if(idx1 < 19){
        idx1++;
        yelpResp(1, idx1);
      }
    });
    $('#no2').click(function (){
      if(idx2 < 19){
        idx2++;
        yelpResp(2, idx2);
      }
    });
    $('#no3').click(function (){
      if(idx3 < 19){
        idx3++;
        yelpResp(3, idx3);
      }
    });
  }

  function yelpPost(idx){
    var receivedResp = localStorage.getItem('sentResp');
    var resp = JSON.parse(receivedResp);
    $.ajax({
      type: "POST",
      url: "/user_places",
      dataType: "json",
      data: { user_place: { place: resp.businesses[idx].id } },
      error: function(e){
        console.log(e);
      },
      success: function(data){
        console.log('success');
        var id = data.id
        for(x = 0; x < resp.businesses[idx].categories.length; x++){
          $.ajax({
            type: "POST",
            url: "/user_place_categories",
            dataType: "json",
            data: { user_place_category: { userplace_id: id, category: resp.businesses[idx].categories[x][0] } },
            error: function(e){
              console.log(e);
            },
            success: function(data){
              console.log('success');
            },
          });
        };
      },
    });
  };

  ///// User Places Choice Functions End /////

});

  ///// Facebook Login Start /////

  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response){
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if(response.status === 'connected'){
      // Logged into your app and Facebook.
      testAPI();
      // posttodatabase();
    }
    else if(response.status === 'not_authorized'){
      // The person is logged into Facebook, but not your app.
      document.getElementById('status').innerHTML = 'Please log into this app.';
    }
    else{
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('status').innerHTML = 'Please log into Facebook.';
    };
  };

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState(){
    FB.getLoginStatus(function (response){
      statusChangeCallback(response);
    });
  };

  window.fbAsyncInit = function(){
    FB.init({
      appId      : '415436648618689',
      cookie     : true,  // enable cookies to allow the server to access 
                          // the session
      xfbml      : true,  // parse social plugins on this page
      version    : 'v2.2' // use version 2.2
    });
    // Now that we've initialized the JavaScript SDK, we call 
    // FB.getLoginStatus().  This function gets the state of the
    // person visiting this page and can return one of three states to
    // the callback you provide.  They can be:
    //
    // 1. Logged into your app ('connected')
    // 2. Logged into Facebook, but not your app ('not_authorized')
    // 3. Not logged into Facebook and can't tell if they are logged into
    //    your app or not.
    //
    // These three cases are handled in the callback function.

    FB.getLoginStatus(function (response){
      statusChangeCallback(response);
    });
  };

  // Load the SDK asynchronously
  (function (d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }
  (document, 'script', 'facebook-jssdk'));


  FB.login(function (response){
    // Original FB.login code
  }, { auth_type: 'reauthenticate' })

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI(){
    FB.api('/me', function (fbResp){
      document.getElementById('status').innerHTML = 'Thanks for logging in, ' + fbResp.name + '!';
      $.ajaxSettings.dataType = "json";

      $.ajax({
        type: "GET",
        url: "/user_search",
        dataType: "json",
        data: { fb_id: fbResp.id },
        error: function(e){
          console.log("error");
          console.log(e);
        },
        success: function(user){
          if(user == null){
            console.log('testing');
            $.ajax({
              type: "POST",
              url: "/users",
              dataType: "json",
              data: { user: { fb_id: fbResp.id, name: fbResp.name, gender: fbResp.gender,
                email: (fbResp.email && fbResp.email.length > 0) ? fbResp.email  : "null@email.com" } },
              error: function(e){
                console.log("error");
                console.log(e);
              },
              success: function(data){
                console.log("created user");
              }
            });
          };
        }
      });
    }
    // FB.logout(function(response){
    //  Person is now logged out
    // })
  )}

///// Facebook Login End /////