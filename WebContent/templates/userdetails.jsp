	<form  id="addform" name="addform" method="post"
		action="AddDetails">
		<table cellspacing="10" width="100%">
			<tr>
				<td>
					<div class="group">
						<input type="text" id="lrno" name="lrno" required maxlength="10"><span class="highlight"></span><span
							class="bar"></span> <label>LR No</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text" id="customer" name="customer" required maxlength="45"><span class="highlight"></span><span
							class="bar"></span> <label>Customer</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="commodity" name="commodity" required maxlength="45"><span class="highlight"></span><span
							class="bar"></span> <label>Commodity</label>
					</div>
				</td>


			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text" id="from" name="from" required maxlength="45"><span class="highlight"></span><span
							class="bar"></span> <label>From</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="to" name="to" required maxlength="45"><span class="highlight"></span><span
							class="bar"></span> <label>To</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="type" name="type" required maxlength="45"><span class="highlight"></span><span
							class="bar"></span> <label>Type</label>
					</div>
				</td>

			</tr>

			<tr>
			<td>
					<div class="group">
						<input type="text" maxlength="15" required id="vehicleno" name="vehicleno"><span class="highlight"></span><span
							class="bar"></span> <label>Vehicle No</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="driver" name="driver" required maxlength="45"><span class="highlight"></span><span
							class="bar"></span> <label>Driver</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="dAtPort" name="dAtPort" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Diesel At Port</label>
					</div>
				</td>
			</tr>

			<tr>
			<td>
					<div class="group">
						<input type="text" id="outDate" name="outDate" required><span class="highlight"></span><span
							class="bar"></span> <label>Starting Date</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text" id="inDate" name="inDate" required><span class="highlight"></span><span
							class="bar"></span> <label>Return Date</label>
					</div>

				</td>
				<td>
					<div class="group">
						<input type="text" id="starting" name="starting" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Starting</label>
					</div>
				</td>
				

			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text" id="ending" name="ending" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Ending</label>
					</div>
				</td>

				<td>
					<div class="group" >
						<input type="text" id="tripKMS" name="tripKMS" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Trip KMS</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="avg" name="avg" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Avg</label>
					</div>
				</td>
			</tr>

			<tr>
				<td>
					<div class="group">
						<input type="text" id="dOutside" name="dOutside" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Diesel Outside</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="toll" name="toll" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Toll</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text" id="rtopc" name="rtopc" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>RTO/PC</label>
					</div>
				</td>

			</tr>
			<tr>
				<td>
					<div class="group">
						<input type="text" id="act" name="act" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>ACT</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text" id="lun" name="lun" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>L/UN</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="weighmen" name="weighmen" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>WEIGHMEN</label>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="group">
						<input type="text" id="others" name="others" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>OTHERS</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text" id="tripExp" name="tripExp" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Trip Expenses</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="totExp" name="totExp" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Total Expenses</label>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="group">
						<input type="text" id="advance" name="advance" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Advance</label>
					</div>
				</td>

				<td>
					<div class="group">
						<input type="text" id="balFromAdv" name="balFromAdv" required maxlength="20"><span class="highlight"></span><span
							class="bar"></span> <label>Balance From Advance</label>
					</div>
				</td>
				<td>
					<div class="group">
						<input type="text" id="advReturend" name="advReturned"><span class="highlight"></span><span
							class="bar"></span> <label>Advance Returned</label>
					</div>
				</td>
			</tr>

			<tr>
				<td>
					<button type="submit" class="button buttonBlue">
						Submit
						<div class="ripples buttonRipples">
							<span class="ripplesCircle"></span>
						</div>
					</button>
				</td>

				<td>
					<button type="reset" class="button buttonBlue">
						Clear
						<div class="ripples buttonRipples">
							<span class="ripplesCircle"></span>
						</div>
					</button>
				</td>
			</tr>
		</table>
	</form>




