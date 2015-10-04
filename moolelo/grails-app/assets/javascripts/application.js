// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require materialize
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);

	$(document).ready(function(){
	  if($('.parallax').length){
		  $('.parallax').parallax();
	  }
	  if($('.datepicker').length){
	      $('.datepicker').pickadate({
	    	  format: 'mm/dd/yyyy',
	    	  formatSubmit: 'mm/dd/yyyy',
	    	  selectYears: 1000,
	    	  selectMonths: true,
	    	  max: new Date()
	    	  
	      });
	  }

	  if($('.location-modal-trigger').length){
	      $('.location-modal-trigger').leanModal({
	    	  ready : function(){
	    		  showMap();
	    	  },
	    	  complete : function(){
	    		 $('#nameOfPlace').val($('#placeName').val()); 
	    		 $('#nameOfPlace').show();
	    	  }
	      });
	  }
	  if($('#locationSearch').length){
	      $('#locationSearch').change(function(){
	    	  codeAddress($(this).val(), function(lat,lng){
	    		  $('[data-role="latitude"').val(lat);
	    		  $('[data-role="longitude"').val(lng);
	    	  });
	      });
	  }
    });
}
