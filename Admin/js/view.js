$(document).ready(function(){
	
	$('#sendtoall').hide();
	function foo()
	{
		//console.log("in am heres")
		if(!$('#checked').is(":checked")&&$.trim($('#emailandusnvalues').val()).length>0)
		{
			console.log("n here")
			if($.trim($('#textarea-input').val()).length>0&&$.trim($('#subject').val()).length>0)
			{
				$('#notification').prop('disabled',false);
			}
			else
			{
				$('#notification').prop('disabled',true);
			}
		}
		else if($('#checked').is(":checked")&&$.trim($('#textarea-input').val()).length>0&&$.trim($('#subject').val()).length>0)
		{
						//console.log("elen here")
			$('#notification').prop('disabled',false);
		}
		else
		{
			$('#notification').prop('disabled',true);
		}
	}
	setInterval(foo,1000);
	$('#checked').change(function(){
			$('#sendtoall').toggle();

	});
	function functionfoo()
	{
		$('#modalbody button').last().remove();
		$('#modalbody').append('<p>Successfully Sent</p>')
		$('#modalfooter').append('<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>')
		$('#textarea-input').val('');
		$('#subject').val('');
		$('#emailandusnvalues').val();
	}
	$('#notification').click(function(){
		console.log('i was here')
		console.log($('#update_notification'));
		$('#modalfooter button').last().remove();
		$('#modalbody p').last().remove();
		$('#modalbody').append('<button type="button" class="btn btn-primary col"><i class="fa fa-spinner fa-spin"></i>&nbsp; LOADING</button>')
		val = $('#textarea-input').val();
		console.log(val);
		regex = /<<<(.*?)>>>/;
		while(regex.test(val))
		{
			test = val.match(regex);
			console.log(test)
			console.log(' <a href=form.html?token='+test[1]+'>Fill this Form</a>');
			console.log(val)
			val = val.replace(regex,' <a href=form.html?token='+test[1]+'>Fill this Form</a>');
			console.log(val)
		}
		$('#textarea-input').val(val);
		console.log(val)
		console.log($('#textarea-input').val())
		$('#update_notification').ajaxSubmit({url:'send_notification.php',type:'post',
			error:function(data){},
			success:function(response){functionfoo()},

	});
		//setTimeout(,2000);
	});



	// Type ahead for usn and email
	$('#listid').typeahead({
  source: function(query, result){
  		$.ajax({
        type: "GET",
        url: "student_query.php",
        dataType: "json",
        data:
        {
        	query:$('#listid').val().split(" ").slice(-1)[0]
        },
        success: function (response){
          result($.map(response, function(item){
      return item;
     }));
           console.log(response+"resp");
                                    },
        error: function (jqXHR, exception) {
        	//alert("error")
        var msg = '';
        if (jqXHR.status === 0) {
            msg = 'Not connect.\n Verify Network.';
        } else if (jqXHR.status == 404) {
            msg = 'Requested page not found. [404]';
        } else if (jqXHR.status == 500) {
            msg = 'Internal Server Error [500].';
        } else if (exception === 'parsererror') {
            msg = 'Requested JSON parse failed.';
        } else if (exception === 'timeout') {
            msg = 'Time out error.';
        } else if (exception === 'abort') {
            msg = 'Ajax request aborted.';
        } else {
            msg = 'Uncaught Error.\n' + jqXHR.responseText;
        }
       console.log(msg)
    },
        });


     
    }
  });

	$('#listid').keypress(function(event)
	{
		if(event.which==13)
		{
			console.log($('#listid').val())
			$('#emailandusnvalues').append(" "+$('#listid').val());
			$('#listid').val("");
		}
	})

});