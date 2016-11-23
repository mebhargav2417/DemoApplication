<html>
<head>
<title>Demo Application</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" type="text/css"
	href="../css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="../css/fontsawesome.css" />
<link rel="stylesheet" type="text/css" href="../css/jquery-ui.css" />
</head>
<body>
	<form style="width: 75%">
		<h2 style="text-align: center">From</h2>
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
							class="bar"></span> <label>Party</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Vehicle No</label>
					</div>
				</td>


			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Driver</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="outDate"><span class="highlight"></span><span
							class="bar"></span> <label>Out Date</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text" id="inDate"><span class="highlight"></span><span
							class="bar"></span> <label>In Date</label>
					</div>

				</td>

			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Party</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Destination</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Port Diesel</label>
					</div>
				</td>
			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Outside Diesel</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Out Reading</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>In Reading</label>
					</div>
				</td>

			</tr>

			<tr>
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
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>ACT/MNR</label>
					</div>
				</td>
			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Load/Unloading</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Weighment</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text"><span class="highlight"></span><span
							class="bar"></span> <label>Others</label>
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
							class="bar"></span> <label>Adv Balance</label>
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


	<script src="../js/jquery/3.1.1/jquery-3.1.1.min.js"></script>
	<script src="../js/index.js"></script>
	<script src="../js/tabchange.js"></script>
	<script src="../js/jquery-ui.js"></script>
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
