jQuery(function(){
	jQuery('body').delegate("div[class='specialization']", 'click', function(){
		var spec = $(this).attr('id')
		var data = 'specialization=' + spec
		var link = '/specialization'
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
		var spec = $(this).attr('id')
		var data= 'link=' + spec
		var link = '/navbar'
		$.ajax({
				data: data,		      
				url: link
		  }).done( function()
				{
					if (spec === 'contact') 
					{
						initialize()					
					}				
				})
	})
})
function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(30.057856, -95.186241),
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(
		document.getElementById('map_container'), mapOptions)
}
