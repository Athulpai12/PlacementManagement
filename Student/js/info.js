$('#feedback_submit').click(function(){
	var auth = $.cookie('auth');
  	auth = JSON.parse(auth);
  	if($('#feedback_text').val()!==""){
		datasend = "feedback_text"+"="+$('#feedback_text').val()+"&feedback_anonymous"+"="+$('#feedback_anonymous').prop('checked')+"&uid"+"="+auth.id;
		$.ajax({url: 'info.php', type: 'POST', data: datasend})
		.done(function(response){
			if(response=="success"){
				$('#feedback_text').val("");
				$('#feedback_anonymous').prop('checked',true);
			}
			else if(response=="failure"){
				alert("Couldn't send feedback");
			}
		});
	}
});

$('#feedback_reset').click(function(){
	$('#feedback_text').val("");
	$('#feedback_anonymous').prop('checked',true);
});