		
	<form style="width: 50%" id="adduserform" name="adduserform" method="post"
		action="AddUser">
		<h2 style="text-align: center">Account Creation</h2>
		<div class="group">
			<input type="text" id="empName" name="empName" maxlength="80" required><span class="highlight"></span><span
				class="bar"></span> <label>Employee Name</label>
		</div>
		<div class="group">
			<input type="text" id="empId" name="empId" maxlength="40" required><span class="highlight"></span><span
				class="bar"></span> <label>Employee ID</label>
		</div>
		<div class="group">
			<input type="text" id="dobDate" name="dobDate" required><span class="highlight"></span><span
				class="bar"></span> <label>Employee DOB</label>
		</div>
		<div class="group">
			<input type="text" id="empMail" name="empMail" maxlength="40" required><span class="highlight"></span><span
				class="bar"></span> <label>Employee Email</label>
		</div>
		<div class="group">
			<input type="password" id="empPwd" name="empPwd" maxlength="40" required><span class="highlight"></span><span
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
	

