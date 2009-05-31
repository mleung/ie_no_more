// If jquery is loaded this will run. 
$(document).ready(function() {
  // TODO: Figure out why the hell this isn't working. The rails controller thinks it's a 
  // standard http request and not a JS request. Weird!
  jQuery.ajaxSetup({
    "beforeSend": function(xhr)  {xhr.setRequestHeader("Accept", "text/javascript")}
  })
  
  $("#ie-no-more-close-button").click(function() {
		$.ajax({
			type: "POST",
			url: this.href,
			complete: function() { $("#ie-no-more-container").hide();  }
		});
		return false;
  });
  
});

// If Prototype, then this will happen...
Event.observe(window, 'load', function() {
  // Fill this shit in later.
}
