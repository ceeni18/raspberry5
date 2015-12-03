<!DOCTYPE html>

<html>

  <head>

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">

    <meta charset="utf-8">

    <title>Polygon Arrays</title>

    <style>

      html, body {

        height: 100%;

        margin: 0;

        padding: 0;

      }

      #map {

        height: 100%;

      }
      
      
.HEADLINE
{
          font-family: "Helvetica Neue", "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
        font-size: 12px;
        margin-top: .5em; color: #666;
        margin: 0 0 16px
}
.SUBHEADLINE
{
        font-family: "Lucida Grande", Tahoma;
	font-size: 10px;
	font-weight: lighter;
	font-variant: normal;
	text-transform: uppercase;
	color: #666666;
        margin-top: 8px;
	text-align: center!important;
	letter-spacing: 0.3em
}
      

    </style>
    

  </head>

  <body>

    <div id="map"></div>

    <script>



// This example creates a simple polygon representing the Bermuda Triangle.

// When the user clicks on the polygon an info window opens, showing

// information about the polygon's coordinates.



var map;

var infoWindow;



function initMap() {

  map = new google.maps.Map(document.getElementById('map'), {

    zoom: 15,

    center: {lat: 36.183818, lng: -121.131563},

    mapTypeId: google.maps.MapTypeId.SATELLITE

  });



  // Define the LatLng coordinates for the polygon.

  var triangleCoords = [

      {lat: 36.188079, lng: -121.141198},

      {lat: 36.190555, lng: -121.137743},

      {lat: 36.187265, lng: -121.134160},

      {lat: 36.184806, lng: -121.137486}

  ];

  

  var triangleCoordsa = [

                        {lat: 36.190624, lng: -121.137657},

                        {lat: 36.192425, lng: -121.135190},

                        {lat: 36.190209, lng: -121.132743},

                        {lat: 36.189481, lng: -121.133687},

                        {lat: 36.188390, lng: -121.132593},

                        {lat: 36.187386, lng: -121.133924}

                    ];

  var triangleCoordsb = [

                         {lat: 36.184632, lng: -121.137292},

                         {lat: 36.187040, lng: -121.133924},

                         {lat: 36.183368, lng: -121.129954},

                         {lat: 36.182277, lng: -121.131413},

                         {lat: 36.181376, lng: -121.130490},

                         {lat: 36.180337, lng: -121.134117}

                     ];

  var triangleCoordsc = [

                         {lat: 36.187161, lng: -121.133773},

                         {lat: 36.188217, lng: -121.132379},

                         {lat: 36.187299, lng: -121.131370},

                         {lat: 36.187161, lng: -121.132164},

                         {lat: 36.185827, lng: -121.132314}

                     ];

  var triangleCoordsd = [

                         {lat: 36.182242, lng: -121.131198},

                         {lat: 36.183299, lng: -121.129739},

                         {lat: 36.181653, lng: -121.128216},

                         {lat: 36.180649, lng: -121.129396}

                     ];

  var triangleCoordse = [

                         {lat: 36.180216, lng: -121.134052},

                         {lat: 36.181255, lng: -121.130490},

                         {lat: 36.180251, lng: -121.129568},

                         {lat: 36.179488, lng: -121.129632},

                         {lat: 36.176960, lng: -121.128559},

                         {lat: 36.176094, lng: -121.132164}

                         
                     ];
  
  var triangleCoordsf = [

                         {lat: 36.175920, lng: -121.132035},

                         {lat: 36.176683, lng: -121.128387},

                         {lat: 36.173530, lng: -121.126971},

                         {lat: 36.173790, lng: -121.126091},

                         {lat: 36.170793, lng: -121.124632},

                         {lat: 36.169373, lng: -121.129868}

                         
                     ];
  
  
  var triangleCoordsg = [

                         {lat: 36.192547, lng: -121.134911},

                         {lat: 36.192962, lng: -121.132808},

                         {lat: 36.189533, lng: -121.128345},

                         {lat: 36.187490, lng: -121.131091},

                         {lat: 36.189499, lng: -121.133237},

                         {lat: 36.190295, lng: -121.132507}

                         
                     ];




  // Construct the polygon.

  var bermudaTriangle = new google.maps.Polygon({

    paths: triangleCoords,

    strokeColor: '#7FFF00',

    strokeOpacity: 0.8,

    strokeWeight: 3,

    fillColor: '#7FFF00',

    fillOpacity: 0.35

  });

  bermudaTriangle.setMap(map);

  

  

  var bermudaTrianglea = new google.maps.Polygon({

    paths: triangleCoordsa,

    strokeColor: '#FFD700',

    strokeOpacity: 0.8,

    strokeWeight: 3,

    fillColor: '#FFD700',

    fillOpacity: 0.35

  });

  bermudaTrianglea.setMap(map);

 

  var bermudaTriangleb = new google.maps.Polygon({

    paths: triangleCoordsb,

    strokeColor: '#7FFF00',

    strokeOpacity: 0.8,

    strokeWeight: 3,

    fillColor: '#7FFF00',

    fillOpacity: 0.35

  });

  bermudaTriangleb.setMap(map);

 

var bermudaTrianglec = new google.maps.Polygon({

    paths: triangleCoordsc,

    strokeColor: '#FF0000',

    strokeOpacity: 0.8,

    strokeWeight: 3,

    fillColor: '#FF0000',

    fillOpacity: 0.35

  });

  bermudaTrianglec.setMap(map);

 

var bermudaTriangled = new google.maps.Polygon({

    paths: triangleCoordsd,

    strokeColor: '#7FFF00',

    strokeOpacity: 0.8,

    strokeWeight: 3,

    fillColor: '#7FFF00',

    fillOpacity: 0.35

  });

  bermudaTriangled.setMap(map);



  var bermudaTrianglee = new google.maps.Polygon({

    paths: triangleCoordse,

    strokeColor: '#7FFF00',

    strokeOpacity: 0.8,

    strokeWeight: 3,

    fillColor: '#7FFF00',

    fillOpacity: 0.35

  });

  bermudaTrianglee.setMap(map);
  
  var bermudaTrianglef = new google.maps.Polygon({

	    paths: triangleCoordsf,

	    strokeColor: '#7FFF00',

	    strokeOpacity: 0.8,

	    strokeWeight: 3,

	    fillColor: '#7FFF00',

	    fillOpacity: 0.35

	  });

  bermudaTrianglef.setMap(map);
  
  var bermudaTriangleg = new google.maps.Polygon({

	    paths: triangleCoordsg,

	    strokeColor: '#7FFF00',

	    strokeOpacity: 0.8,

	    strokeWeight: 3,

	    fillColor: '#7FFF00',

	    fillOpacity: 0.35

	  });

bermudaTriangleg.setMap(map);

 

  // Add a listener for the click event.

  bermudaTriangle.addListener('click', showArrays);

  bermudaTrianglea.addListener('click', showArraysa);

  bermudaTriangleb.addListener('click', showArraysb);

  bermudaTrianglec.addListener('click', showArraysc);

  bermudaTriangled.addListener('click', showArraysd);

  bermudaTrianglee.addListener('click', showArrayse);
  
  bermudaTrianglef.addListener('click', showArraysf);
  bermudaTriangleg.addListener('click', showArraysg);



  infoWindow = new google.maps.InfoWindow;

  infoWindowa = new google.maps.InfoWindow;

  infoWindowb = new google.maps.InfoWindow;

  infoWindowc = new google.maps.InfoWindow;

  infoWindowd = new google.maps.InfoWindow;

  infoWindowe = new google.maps.InfoWindow;
  
  infoWindowf = new google.maps.InfoWindow;
  infoWindowg = new google.maps.InfoWindow;

}



/** @this {google.maps.Polygon} */

function showArrays(event) {



  var vertices = this.getPath();



  // Iterate over the vertices.

  for (var i =0; i < vertices.getLength(); i++) {

    var xy = vertices.getAt(i);

    contentString = '<div class="HEADLINE">'+

   

    '<h1 style="color:green">Productive Vintage Field</h1>'+


    '</div>'+

    '<div class="SUBHEADLINE">'+

    '<p>SAP pressure - 95%</p> '+

    '<p>Yield - 98%</p>'+

    '<p>Pruning Weight - 92%</p>'+

    '<p>Soil Moisture - 95%</p>'+

  

    '</div>';

  }



  // Replace the info window's content and position.

  infoWindow.setContent(contentString);

  infoWindow.setPosition(event.latLng);



  infoWindow.open(map);

}



function showArraysa(event) {



  var vertices = this.getPath();



  // Iterate over the vertices.

  for (var i =0; i < vertices.getLength(); i++) {

    var xy = vertices.getAt(i);

    contentString = '<div class="HEADLINE">'+

   

    '<h1 style="color:blue">Average Productive Vintage Field</h1>'+


    '</div>'+

    '<div class="SUBHEADLINE">'+

    '<p>SAP pressure - 71%</p> '+

    '<p>Yield - 76%</p>'+

    '<p>Pruning Weight - 69%</p>'+

    '<p>Soil Moisture - 76%</p>'+

  

    '</div>';


  }



  // Replace the info window's content and position.

  infoWindowa.setContent(contentString);

  infoWindowa.setPosition(event.latLng);



  infoWindowa.open(map);

}


function showArraysb(event) {



  var vertices = this.getPath();



  // Iterate over the vertices.

  for (var i =0; i < vertices.getLength(); i++) {

    var xy = vertices.getAt(i);

    contentString = '<div class="HEADLINE">'+

   

    '<h1 style="color:green">Productive Vintage Field</h1>'+


    '</div>'+

    '<div class="SUBHEADLINE">'+

    '<p>SAP pressure - 97%</p> '+

    '<p>Yield - 95%</p>'+

    '<p>Pruning Weight - 92%</p>'+

    '<p>Soil Moisture - 91%</p>'+

  

    '</div>';


  }



  // Replace the info window's content and position.

  infoWindowb.setContent(contentString);

  infoWindowb.setPosition(event.latLng);



  infoWindowb.open(map);

}


function showArraysc(event) {



  var vertices = this.getPath();



  // Iterate over the vertices.

  for (var i =0; i < vertices.getLength(); i++) {

    var xy = vertices.getAt(i);

    contentString = '<div class="HEADLINE">'+

   

    '<h1 style="color:red">Non - Productive Vintage Field</h1>'+


    '</div>'+

    '<div class="SUBHEADLINE">'+

    '<p>SAP pressure - 50%</p> '+

    '<p>Yield - 61%</p>'+

    '<p>Pruning Weight - 62%</p>'+

    '<p>Soil Moisture - 56%</p>'+

  

    '</div>';


  }



  // Replace the info window's content and position.

  infoWindowc.setContent(contentString);

  infoWindowc.setPosition(event.latLng);



  infoWindowc.open(map);

}


function showArraysd(event) {



  var vertices = this.getPath();



  // Iterate over the vertices.

  for (var i =0; i < vertices.getLength(); i++) {

    var xy = vertices.getAt(i);

    contentString = '<div class="HEADLINE">'+

   

    '<h1 style="color:green"> Productive Vintage Field</h1>'+


    '</div>'+

    '<div class="SUBHEADLINE">'+

    '<p>SAP pressure - 97%</p> '+

    '<p>Yield - 94%</p>'+

    '<p>Pruning Weight - 94%</p>'+

    '<p>Soil Moisture - 96%</p>'+

  

    '</div>';


  }



  // Replace the info window's content and position.

  infoWindowd.setContent(contentString);

  infoWindowd.setPosition(event.latLng);



  infoWindowd.open(map);

}


function showArrayse(event) {



  var vertices = this.getPath();



  // Iterate over the vertices.

  for (var i =0; i < vertices.getLength(); i++) {

    var xy = vertices.getAt(i);

    contentString = '<div class="HEADLINE">'+

   

    '<h1 style="color:green">Productive Vintage Field</h1>'+


    '</div>'+

    '<div class="SUBHEADLINE">'+

    '<p>SAP pressure - 97%</p> '+

    '<p>Yield - 95%</p>'+

    '<p>Pruning Weight - 98%</p>'+

    '<p>Soil Moisture - 97%</p>'+

  

    '</div>';


  }



  // Replace the info window's content and position.

  infoWindowe.setContent(contentString);

  infoWindowe.setPosition(event.latLng);



  infoWindowe.open(map);

}

function showArraysf(event) {



	  var vertices = this.getPath();



	  // Iterate over the vertices.

	  for (var i =0; i < vertices.getLength(); i++) {

	    var xy = vertices.getAt(i);

	    contentString = '<div class="HEADLINE">'+

	   

	    '<h1 style="color:green">Productive Vintage Field</h1>'+


	    '</div>'+

	    '<div class="SUBHEADLINE">'+

	    '<p>SAP pressure - 98%</p> '+

	    '<p>Yield - 93%</p>'+

	    '<p>Pruning Weight - 98%</p>'+

	    '<p>Soil Moisture - 99%</p>'+

	  

	    '</div>';


	  }


	  infoWindowf.setContent(contentString);

	  infoWindowf.setPosition(event.latLng);

	  infoWindowf.open(map);

	}
	
function showArraysg(event) {



	  var vertices = this.getPath();



	  // Iterate over the vertices.

	  for (var i =0; i < vertices.getLength(); i++) {

	    var xy = vertices.getAt(i);

	    contentString = '<div class="HEADLINE">'+

	   

	    '<h1 style="color:blue">Productive Vintage Field</h1>'+


	    '</div>'+

	    '<div class="SUBHEADLINE">'+

	    '<p>SAP pressure - 94%</p> '+

	    '<p>Yield - 95%</p>'+

	    '<p>Pruning Weight - 92%</p>'+

	    '<p>Soil Moisture - 96%</p>'+

	  

	    '</div>';


	  }



	  // Replace the info window's content and position.

	  infoWindowg.setContent(contentString);

	  infoWindowg.setPosition(event.latLng);



	  infoWindowg.open(map);

	}



    </script>

    <script async defer

        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCFeYlqrt-QZB8fnJedwtuYsRqSxG5B28o&signed_in=true&callback=initMap"></script>

  </body>

</html>