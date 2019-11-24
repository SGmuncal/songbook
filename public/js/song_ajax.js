$(document).ready(function(){
	
	$.ajaxSetup({
	    headers: {
	        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
	    }
	});

	$('.btn_add_music').on('click',function(e){
		e.preventDefault();
		var song_title = $('#song_title').val();
		var song_artist = $('#song_artist').val();
		var song_lyrics = $('#song_lyrics').val();

		var data = new FormData();
		data.append('song_title',song_title);
		data.append('song_artist',song_artist);
		data.append('song_lyrics',song_lyrics);
		data.append('_token', $('.token').val());


		if(song_title == '' || song_artist == '' || song_lyrics == '')  {
			alert('Field the blank');
			return false;
		}

		$.ajax({
			url: '/add_song',
		    data: data,
		    type: 'POST',
		    contentType: false, // NEEDED, DON'T OMIT THIS (requires jQuery 1.6+)
		    processData: false, // NEEDED, DON'T OMIT THIS
		    // ... Other options like success and etc
		    success:function(res) {
		    	if(res == "Success Inserted") {
		    		alert('Successfully Inserted');
		    		location.reload();
		    	}
		    },
		    error:function(err) {
		    	alert(err);
		    }
		    
		})

	});


	$('.btn_edit_music').on('click',function(e){
	
		e.preventDefault();
		var attribute_id = $(this).attr("data-attri-edit-music");
		

		var data_id = new FormData();

		data_id.append('song_id',attribute_id);
		data_id.append('_token', $('.token').val());

		$.ajax({
			url: '/get_edit_song',
		    data: data_id,
		    type: 'post',
		    contentType: false, // NEEDED, DON'T OMIT THIS 
		    processData: false, // NEEDED, DON'T OMIT THIS
		    // ... Other options like success and etc
		    success:function(res) {

		    	//in success lets append the result to the textbox where we update the value.
		    	var res_song_id = res[0]['songlist_id'];
		    	var res_song_title = res[0]['title'];
				var res_song_artist = res[0]['artist'];
				var res_song_lyrics = res[0]['lyrics'];

				$('#edit_hidden_ids_for_songs').val(res_song_id);
				$('#edit_song_title').val(res_song_title);
		 		$('#edit_song_artist').val(res_song_artist);
				$('#edit_song_lyrics').val(res_song_lyrics);

		    },
		    error:function(err) {
		    	alert(err);
		    }
		    
		})

	});


	$('.btn_update_song').on('click',function(e){

		e.preventDefault();
		var update_data = new FormData();

		var hidden_id = $('#edit_hidden_ids_for_songs').val();
		var edit_song_title = $('#edit_song_title').val();
 		var edit_song_artist = $('#edit_song_artist').val();
		var edit_song_lyrics = $('#edit_song_lyrics').val();

		update_data.append('song_id',hidden_id);
		update_data.append('edit_song_title',edit_song_title);
		update_data.append('edit_song_artist',edit_song_artist);
		update_data.append('edit_song_lyrics',edit_song_lyrics);
		update_data.append('_token', $('.token').val());

		//let say the value is on the textbox now, lets update each value. by passing
		//the value to the backend side of laravel.
		$.ajax({
			url:'/update_song',
			data: update_data,
			type: 'post',
		    contentType: false, // NEEDED, DON'T OMIT THIS 
		    processData: false, // NEEDED, DON'T OMIT THIS
		    success:function(res) {
		    	console.log(res);
		    	if(res == "Success Update") {
		    		alert('Successfully Update');
		    		location.reload();
		    	}
		    },
		    error:function(err) {
		    	console.log(err);
		    }
		});

	})


	$('.btn_deactivate_music').on('click',function(e){
		e.preventDefault();
		var attribute_id = $(this).attr("data-attri-deactivate-music");

		if (!confirm("Do you want to delete")){
			alert('Deactivate Cancel');
	      	return false;
	    }
	    else
	    {

	    	var data = new FormData();
			data.append('song_id',attribute_id);
			data.append('_token', $('.token').val());

	    	$.ajax({
				url: '/deactivate_song',
			    data: data,
			    type: 'POST',
			    contentType: false, // NEEDED, DON'T OMIT THIS
			    processData: false, // NEEDED, DON'T OMIT THIS
			    // ... Other options like success and etc
			    success:function(res) {
			    	if(res == "Success Deactivate") {
			    		alert('Successfully Deactivate');
			    		location.reload();
			    	}
			    },
			    error:function(err) {
			    	alert(err);
			    }
			    
			});
	    }
		
	});
});