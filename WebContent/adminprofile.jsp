<%@ page import="com.mb2417.demo.*"%>
<%
	Parameters parameters = new Parameters();
	if(parameters.getLoginUser() == null)
		parameters.setLoginUser("empty");
	if(parameters.getSuccessLogin() == null)
		parameters.setSuccessLogin("successEmpty");
%>
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
<% if(parameters.getLoginUser() == parameters.getSuccessLogin() ) { %>
<body  class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">

	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
          <h3 style="color:#FFFFFF">Admin </h3>
          
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
          <a href="#dashboard" class="mdl-layout__tab is-active">Dashboard</a>
          <a href="#usrmgt" class="mdl-layout__tab">User Management</a>
          <a href="#datamgt" class="mdl-layout__tab">Data Management</a>
          <a href="#admsettings" class="mdl-layout__tab">Settings</a>
          <a href="#" class="mdl-layout__tab">Logout</a>
        </div>
      </header>
      <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active" id="dashboard">
          <section class="section--center mdl-grid mdl-grid--no-spacing ">
          	
            	<h6>Dashboard</h6>
            
          </section>
        </div>
        <div class="mdl-layout__tab-panel" id="usrmgt">
          <section class=" mdl-grid mdl-grid--no-spacing">
            <!-- <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--secondary-dark">
          		<a href="#addUser" class="mdl-layout__tab is-active">Add</a>
          		<a href="#editUser" class="mdl-layout__tab">Edit</a>
          		<a href="#delUser" class="mdl-layout__tab">Delete</a>
        	</div> -->
        	
          </section>
          <%-- <jsp:include page="templates/adduser.jsp" /> --%>
          <form style="width: 50%" id="adduserform" name="adduserform" method="post"
		action="AddUser">
		<h2 style="text-align: center">Account Creation</h2>
		<div class="group">
			<input type="text" id="empName" name="empName" maxlength="80"><span class="highlight"></span><span
				class="bar"></span> <label>Employee Name</label>
		</div>
		<div class="group">
			<input type="text" id="empId" name="empId" maxlength="40"><span class="highlight"></span><span
				class="bar"></span> <label>Employee ID</label>
		</div>
		<div class="group">
			<input type="text" id="dobDate" name="dobDate"><span class="highlight"></span><span
				class="bar"></span> <label>Employee DOB</label>
		</div>
		<div class="group">
			<input type="text" id="empMail" name="empMail" maxlength="40"><span class="highlight"></span><span
				class="bar"></span> <label>Employee Email</label>
		</div>
		<div class="group">
			<input type="password" id="empPwd" name="empPwd" maxlength="40"><span class="highlight"></span><span
				class="bar"></span> <label>Password</label>
		</div>
		<table>
			<tr>
				<td>
					<button type="submit" class="button buttonBlue">
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
        <div class="mdl-layout__tab-panel" id="datamgt">
          <section class="section--center mdl-grid mdl-grid--no-spacing">
            <h6>Data Management</h6>
          </section>
        </div>
        <div class="mdl-layout__tab-panel" id="admsettings">
          <section class="section--center mdl-grid mdl-grid--no-spacing">
            <h6>Settings</h6>
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

<% } else { %>
	<h3 style="text-align:center"><a href="index.jsp">Please Login</a> </h3>
<% } %>
	<script src="js/jquery/3.1.1/jquery-3.1.1.min.js"></script>
	<script src="js/material.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/tabchange.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script>
			
			$(function(){
				
		$("#dobDate").datepicker({
			changeMonth : true,
			changeYear : true,
			showButtonPanel : true,

			yearRange : "1947:2010"
		});
	});
	</script>
	<script>
	$(document).on("submit", "#adduserform", function(event) {
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