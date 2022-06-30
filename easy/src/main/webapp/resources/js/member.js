$(document).ready(function(){
	$('#lbtn').click(function(){
		var id = $('#id').val();
		var pw = $('#pw').val();
		$.ajax({
			url: '/web/member/loginProc.sy',
			type: 'post',
			dataType: 'json',
			data: {
				id : id,
				pw : pw
			},
			success: function(data){
				if(data.result == 'OK'){
					$(location).attr('href', '/web/member/main.sy');
				}
			},
			error: function() {
				$('#id01').css('display', 'block');
			}
		})
	});
	
	$('#hbtn').click(function(){
		$(location).attr('href', '/web/member/main.sy');
	});
});