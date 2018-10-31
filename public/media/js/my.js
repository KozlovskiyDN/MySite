$(function(){
	
	$('.link').click(clik);
	
function clik(){
		var data = $(this).attr('data-id');
		var info = $(this).attr('data-info');
		
		if (info!==1) {
		$('#data'+data).show();
		$(this).attr('data-info', '1');
		// $(this).attr('class','link_hide panel panel-info');	
			
		}
		else {
		$('#data'+data).hide();
		$(this).attr('data-info', '0');
		/* $(this).attr('class','link panel panel-info');	 */
		}
		
	clik();
	};	
	
	
	
	
}); 
