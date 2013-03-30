jQuery(function(){
  jQuery('body').delegate("div[class='specialization']", 'click', function(){
    var spec = $(this).attr('id')
    var data = 'specialization=' + spec
    var link = '/specialization'
    specTag( spec )
    $.ajax({
      data: data,		      
      url: link
    }).done( function()
    {
    })
  })
})
jQuery(function(){
  jQuery('body').delegate("div[class='navbar_link']", 'click', function(){
    var page = $(this).attr('id')
    var data = 'link=' + page
    var link = '/navbar'
    navTag( page ) 
    $.ajax({
      data: data,		      
      url: link
    }).done( function()
    {
      if (page === 'contact') 
      {
        initialize()					
      }				
    })
  })
})
function specTag ( spec ) {
  jQuery('.specialization').each( function(){
    var id = $(this).attr('id')
    if ( spec === id )
    {
      $(this).addClass('selected')
    }
    else 
    {
      $(this).attr('class','specialization')
    }
  })
}
function navTag ( page ) {
  jQuery('.navbar_link').each( function(){
    var id = $(this).attr('id')
    if ( page === id )
    {
      $(this).addClass('selected')
    }
    else 
    {
      $(this).attr('class','navbar_link')
    }
  })
}
function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(29.9432187, -95.32868165),
    zoom: 9,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  var map = new google.maps.Map(
		document.getElementById('map_container'), mapOptions)

  var marker_kingwood = new google.maps.Marker({
      position:  new google.maps.LatLng(30.0492857,-95.2395183),
      map: map,
      title:"Kingwood Facility"
  })

  var marker_houston = new google.maps.Marker({
      position:  new google.maps.LatLng(29.722505,-95.417845),
      map: map,
      title:"Houston Facility"
  })

  google.maps.event.addListener(marker_kingwood, 'click', function() {
    map.setZoom(14);
    map.setCenter(marker_kingwood.getPosition());
  });

  google.maps.event.addListener(marker_houston, 'click', function() {
    map.setZoom(14);
    map.setCenter(marker_houston.getPosition());
  });


}
