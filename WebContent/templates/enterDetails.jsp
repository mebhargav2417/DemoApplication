<html>
<head>
<title>Demo Application</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" type="text/css"
	href="../css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="../css/fontsawesome.css" />
<link rel="stylesheet" type="text/css" href="../css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="../css/tabcomponent.css" />
</head>
<body>
	<div>
		<table>
			<tr>
				<td>
					<button type="button" class="button buttonBlue">
						Logout
						<div class="ripples buttonRipples">
							<span class="ripplesCircle"></span>
						</div>
					</button>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<div id="tabs" class="tabs">
			<nav>
				<ul>
					<li><a href="#section-1"><span><i
								class="fa fa-user"></i> Admin</span></a></li>
					<li><a href="#section-2"><span><i
								class="fa fa-user-plus"></i> Add Employee</span></a></li>
					<li><a href="#section-3"><span><i
								class="fa fa-search"></i> View Details</span></a></li>
					<li><a href="#section-4"><span><i
								class="fa fa-cogs"></i> Configuration</span></a></li>
					<!-- <li><a href="#section-5" class="icon-truck"><span>Order</span></a></li> -->
				</ul>
			</nav>
			<div class="content">
				<section id="section-1">
					<div class="form-layout">
						<div class="group"> <label>No of Employess</label></div>
					
					</div>
				</section>
				<section id="section-2">
					<div>
						<form style="width: 50%">
							<h2 style="text-align: center">Account Creation</h2>
							<div class="group">
								<input type="text" maxlength="80"><span
									class="highlight"></span><span class="bar"></span> <label>Employee
									Name</label>
							</div>
							<div class="group">
								<input type="text" maxlength="40"><span
									class="highlight"></span><span class="bar"></span> <label>Employee
									ID</label>
							</div>
							<div class="group">
								<input type="text" id="dobDate"><span class="highlight"></span><span
									class="bar"></span> <label>Employee DOB</label>
							</div>
							<div class="group">
								<input type="text" maxlength="40"><span
									class="highlight"></span><span class="bar"></span> <label>Employee
									Email</label>
							</div>
							<div class="group">
								<input type="password" maxlength="40"><span
									class="highlight"></span><span class="bar"></span> <label>Password</label>
							</div>
							<table>
								<tr>
									<td>
										<button type="button" class="button buttonBlue">
											Update
											<div class="ripples buttonRipples">
												<span class="ripplesCircle"></span>
											</div>
										</button>
									</td>
									<td>
										<button type="button" class="button buttonBlue">
											Clear
											<div class="ripples buttonRipples">
												<span class="ripplesCircle"></span>
											</div>
										</button>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</section>
				<section id="section-3"></section>
				<section id="section-4"></section>

			</div>
			<!-- /content -->
		</div>
		<!-- /tabs -->
	</div>


	<script src="../js/jquery/3.1.1/jquery-3.1.1.min.js"></script>
	<script src="../js/index.js"></script>
	<script src="../js/tabchange.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<script src="../js/cbpFWTabs.js"></script>
	<script>
		$(function() {
			$("#dobDate").datepicker({
				changeMonth : true,
				changeYear : true,
				showButtonPanel : true,

				yearRange : "1947:2010"
			});

		});
	</script>
	<script>
			new CBPFWTabs( document.getElementById( 'tabs' ) );
		</script>
</body>
</html>
