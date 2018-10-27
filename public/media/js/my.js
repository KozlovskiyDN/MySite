$(function(){
	$('.link').click(function(){
		var data = $(this).attr('data-id');

		$('#data'+data).show();
		$(this).attr('class','link_hide')
	});
	$('.link_hide').click(function(){
		console.log('ok');
	})
});