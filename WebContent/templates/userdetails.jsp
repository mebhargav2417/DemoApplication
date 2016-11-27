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
		<h2 style="text-align: center">Form</h2>
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



