$(document).ready(function(){
  $('.interview_class').change(function(){
	//alert('gai');
  	var interview_value = $('#interview_id').val();		
	 $.ajax({
		   type:"POST",
		   url:'/mandates/select_interview',
		   data:"server_value="+interview_value,
		   success: function(data){
			  $('#applicant_id').empty();
				       $(data).appendTo('#applicant_id');
			 }
		
	});
   });
});

