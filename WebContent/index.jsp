<%@ page import="com.mb2417.demo.*"%>

<% 
	EncryptDecrypt encDec = new EncryptDecrypt();
	//System.out.println(encDec.decryptDecrypt("demoapp123456789", "demoApplication1", "G1g1py500TMSlsORlZDHAg=="));
	String result = "";
	
%>

<!DOCTYPE html>
<html>
<head>
<title>Demo Application</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/fontsawesome.css" />
</head>
<body>
	<div id="testing"></div>
	<hgroup>

		<!--  <h3>By Bhargav Cheedella</h3> -->
	</hgroup>
	<div class="form">
		<div id="signup">
			<form action="" method="post" style="width: 75%">

				<div class="group">
					<input type="email" id="email" name="email" required autocomplete="off" /><span
						class="highlight"></span><span class="bar"></span> <label>Email</label>
				</div>
				<div class="group">
					<input type="password" id="pwd" name="pwd" required autocomplete="off" /><span
						class="highlight"></span><span class="bar"></span> <label>Password</label>
				</div>
				<button type="button" id="login" class="button buttonBlue">
					Login
					<div class="ripples buttonRipples">
						<span class="ripplesCircle"></span>
					</div>
				</button>
			</form>
		</div>
	</div>


	<!-- <footer><a href="http://www.polymer-project.org/" target="_blank"><img src="https://www.polymer-project.org/images/logos/p-logo.svg"></a>
  <p>You Gotta Love <a href="http://www.polymer-project.org/" target="_blank">Google</a></p>
</footer> -->
	<script src="js/jquery/3.1.1/jquery-3.1.1.min.js"></script>

	<script src="js/index.js"></script>
	<script src="js/tabchange.js"></script>
	<script>
		$('#login').on('click', function() {
			if ($('#email').val() == "admin" && $('#pwd').val() == "admin") {
				//window.location = "templates/enterDetails.jsp";
				$.ajax({
					type: "GET",
                    url: "/DemoApplication/Login",
                    dataType   : "html",
                    contentType: "application/html;charset=utf-8",
                    crossDomain: true,
                    
                    success: function (msgSentapi4) {
                         alert(msgSentapi4)
                    } ,
                    error: function (error) {
                      alert("Error at myteam leave report API3");
                 }, async: false
				});
			} else {
				window.location = "templates/userdetails.jsp";
			}
		});
	</script>
</body>
</html>
