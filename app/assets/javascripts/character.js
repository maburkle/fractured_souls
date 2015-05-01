$(document).ready(function() {

	$('#character_race_id').change(function() {
		var id = $("#character_race_id").val();
		if(id){
		  $.ajax({
		     url: "/races/" + id, // this will be routed
		     type: 'GET',
		     data: {
		       send_id: $("#character_race_id").val()
		     },
		     async: true,
		     dataType: "json",
		     error: function(XMLHttpRequest, errorTextStatus, error){
		                alert("Failed: "+ errorTextStatus+" ;"+error);
		            },
		     success: function(data){
		     	$("#max-hitpoints").text(data["hit_points"]);
		     	$("#max-focus").text(data["focus"]);
		     	$("#character-speed").text(data["speed"]);
		     	$("#max-weight").text(data["carry_weight"]);
		     }
		   });
		}
		else {
			$("#max-hitpoints").text('0');
		  $("#max-focus").text('0');
		  $("#character-speed").text('0');
		  $("#max-weight").text('0');
		}
	});

});
