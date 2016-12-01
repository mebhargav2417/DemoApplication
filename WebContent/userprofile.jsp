<!DOCTYPE html>
<html>
<head>
<title>Demo Application</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/fontsawesome.css" />
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="css/userstyle.css" />
<link rel="stylesheet" type="text/css" href="css/userstylepurple.css">
<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
<style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }
</style>
</head>
<body  class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">

	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
          <h3 style="color:#FFFFFF">Name </h3>
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
          <a href="#overview" class="mdl-layout__tab is-active">Profile</a>
          <a href="#fill" class="mdl-layout__tab">New</a>
          <a href="#view" class="mdl-layout__tab">View</a>
          <a href="#modify" class="mdl-layout__tab">Modify</a>
          <a href="#" class="mdl-layout__tab">Logout</a>
        </div>
      </header>
      <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active" id="overview">
          <section class="section--center mdl-grid mdl-grid--no-spacing">
          	
            	<h6>Profile</h6>
            
          </section>
        </div>
        <div class="mdl-layout__tab-panel" id="fill">
          <section class="section--center mdl-grid mdl-grid--no-spacing">
           	<jsp:include page="templates/userdetails.jsp" />
          </section>
        </div>
        <div class="mdl-layout__tab-panel" id="view">
          <!-- <section class="section--center mdl-grid mdl-grid--no-spacing"> -->
            <jsp:include page="templates/viewdetails.jsp" />
          <!-- </section> -->
        </div>
        <div class="mdl-layout__tab-panel" id="modify">
          <section class="section--center mdl-grid mdl-grid--no-spacing">
            <h6>modify</h6>
          </section>
        </div>
        <!-- <footer class="mdl-mega-footer">
          <div class="mdl-mega-footer--middle-section">
            <div class="mdl-mega-footer--drop-down-section">
              <h6> By Mebhargav</h6>
          </div>
        </footer> -->
      </main>
	</div>


	<script src="js/jquery/3.1.1/jquery-3.1.1.min.js"></script>
	<script src="js/material.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/tabchange.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
	    	$('#myTable').DataTable();
		} );
	</script>
	<script>
  		$( function() {
    		$( "#inDate" ).datepicker({
    			changeMonth: true,
    	        changeYear: true,
    	        showButtonPanel: true,
    		});
    		$( "#outDate" ).datepicker({
    			changeMonth: true,
    	        changeYear: true,
    	        showButtonPanel: true,
    		});
  		} );
  </script>
  <script>
	$(document).on("submit", "#addform", function(event) {
	    var $form = $(this);
	   
	    $.post($form.attr("action"), $form.serialize(), function(response) {
	       if(response.success){
	    	   alert(response.success);
	       } else {
	    	   alert(response.fail);
	       }
	    });

	    event.preventDefault(); // Important! Prevents submitting the form.
	});
	</script>
</body>
</html>