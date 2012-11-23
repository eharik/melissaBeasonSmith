jQuery(function(){
	jQuery('body').delegate("div[class='specialization']", 'click', function(){
		var data= 'specialization=' + $(this).attr('id')
		var link = '/specialization'
		$.ajax({
				data: data,		      
				url: link
		  }).done( function()
				{})
	})
})
jQuery(function(){
	jQuery('body').delegate("div[class='navbar_link']", 'click', function(){
		var data= 'link=' + $(this).attr('id')
		var link = '/navbar'
		$.ajax({
				data: data,		      
				url: link
		  }).done( function()
				{})
	})
})
