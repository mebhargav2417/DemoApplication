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
           	<form >
		
		<table cellspacing="10" width="100%">
			<tr>
				<td>
					<div class="group">
						<input type="text" maxlength="10"><span class="highlight"></span><span
							class="bar"></span> <label>LR No</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Customer</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Commodity</label>
					</div>
				</td>


			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>From</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>To</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Type</label>
					</div>
				</td>

			</tr>

			<tr>
			<td>
					<div class="group">
						<input type="text" maxlength="10"><span class="highlight"></span><span
							class="bar"></span> <label>Vehicle No</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Driver</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Diesel At Port</label>
					</div>
				</td>
			</tr>

			<tr>
			<td>
					<div class="group">
						<input type="text" id="outDate"><span class="highlight"></span><span
							class="bar"></span> <label>Starting Date</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text" id="inDate"><span class="highlight"></span><span
							class="bar"></span> <label>Return Date</label>
					</div>

				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Starting</label>
					</div>
				</td>
				

			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Ending</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Trip KMS</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Avg</label>
					</div>
				</td>
			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Diesel Outside</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Toll</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>RTO/PC</label>
					</div>
				</td>

			</tr>
			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>ACT</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>L/UN</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>WEIGHMEN</label>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>OTHERS</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Trip Expenses</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Total Expenses</label>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Advance</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Balance From Advance</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Advance Returned</label>
					</div>
				</td>
			</tr>

			<tr>
				<td>
					<button type="button" class="button buttonBlue">
						Submit
						<div class="ripples buttonRipples">
							<span class="ripplesCircle"></span>
						</div>
					</button>
				</td>

				<td>
					<button type="button" class="button buttonBlue">
						Cancel
						<div class="ripples buttonRipples">
							<span class="ripplesCircle"></span>
						</div>
					</button>
				</td>
			</tr>
		</table>
	</form>
          </section>
        </div>
        <div class="mdl-layout__tab-panel" id="view">
          <section class="section--center mdl-grid mdl-grid--no-spacing">
            <h6>View</h6>
          </section>
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
</body>
</html>