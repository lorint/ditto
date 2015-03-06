// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$.ajaxSettings.dataType = "json";

$(document).ready(function(){


	///// User Places Choice Functions Start /////
	var a = 1;
  var idx1 = 0;
  var idx2 = 0;
  var idx3 = 0;
  $('#test1').submit(function(event){
    var business = $('#yelp_bus1').val();
    ajaxCall(event, business, 1, idx1);
    idx1++;
  })
  $('#test2').submit(function(event){
    var business = $('#yelp_bus2').val();
    ajaxCall(event, business, 2, idx2);
    idx2++;
  })
  $('#test3').submit(function(event){
    var business = $('#yelp_bus3').val();
    ajaxCall(event, business, 3, idx3);
    idx3++;
  })

  $('#no1').click(function(){
    console.log('test');
    // yelpResp(1, idx1);
  });

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
    })
  }
  function yelpResp(num, idx){
    console.log(num);
    var receivedResp = localStorage.getItem('sentResp');
    var resp = JSON.parse(receivedResp);
    console.log(resp.businesses);
    if(idx == 0){
      $('body').append("<div class='container' id='container"+num+"' />");
      $('#container'+num+'').append("<h1 class='title' id='title"+num+"' />",
                                    "<div class='img_add_cont' id='img_add_cont"+num+"' />",
                                    "<p class='categories' id='categories"+num+"' />",
                                    "<button id='no"+num+"' type='button' />");
      $('#img_add_cont'+num+'').append("<a id='link"+num+"' />", "<p class='address' id='address"+num+"' />");
      $('#link'+num+'').append("<img class='image' id='image"+num+"' />");
      $('#address'+num+'').append("<span id='add"+num+"_pt1' />", ", <br>", "<span id='add"+num+"_pt2' />");
      $('#no'+num+'').html('Incorrect');
    }
    $('#title'+num+'').html(resp.businesses[idx].name);
    $('#link'+num+'').attr('href', resp.businesses[idx].url);
    $('#image'+num+'').attr('src', resp.businesses[idx].image_url);
    $('#add'+num+'_pt1').html(resp.businesses[idx].location.address[0]);
    $('#add'+num+'_pt2').html(resp.businesses[idx].location.city + " " + resp.businesses[idx].location.postal_code);
    for (x = 0; x < resp.businesses[idx].categories.length; x++){
      if(x < (resp.businesses[idx].categories.length - 1)){
        $('#categories'+num+'').append(resp.businesses[idx].categories[x][0] + ", ");
      }
      else{
        $('#categories'+num+'').append(resp.businesses[idx].categories[x][0]);
      }
    }
    a++;
    // yelpPost(resp, idx);
  }

  function yelpPost(resp, idx){
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
      },
    });
  }
  ///// User Places Choice Functions End /////


})