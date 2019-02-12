{{ template "layout/layout.tpl" . }}

{{ define "contents" }}

	
<!-- Start Content Wrapper -->
<div class="content_wrapper">
	<div class="PageTitle">
		<h1>Contact Us</h1>
	</div>
	<div id="breadcrumbs">
		<a href="index.html" title="Home">Home</a> &raquo; Contact Us
	</div>
	<!-- Content Area -->
	<div id="content">
		<div class="columns">
			<div class="column" data-place="2">
				<h2>Geeting in Touch is Easy</h2>
				<p>Email us with any questions or enquiries.We would be happy to answer your questions.</p>
				<div class="hr_610"></div>
				<h2>Send Us Mail</h2>
				<!-- Start Contact Form -->
				<div id="contact">
					<div id="message"></div>
										
					<form method="post" action="contact.php" name="contactform" id="contactform">
					<fieldset>
						<p><label for="name" accesskey="U"><span class="required">*</span> Your Name</label>
						<input name="name" type="text" id="name" size="50" value="" /></p>
						<p><label for="email" accesskey="E"><span class="required">*</span> Email</label>
						<input name="email" type="text" id="email" size="50" value="" /></p>
						<p><label for="phone" accesskey="P"><span class="required">*</span> Phone</label>
						<input name="phone" type="text" id="phone" size="50" value="" /></p>
						<p><label for="subject" accesskey="S">Subject</label>
						<select name="subject" id="subject">
						  <option value="Support">Support</option>
						  <option value="a Sale">Sales</option>
						  <option value="a Bug fix">Report a bug</option>
						</select></p>
						<p><label for="comments" accesskey="C"><span class="required">*</span> Your comments</label>
						<textarea name="comments"  rows="8" cols="40"  id="comments" style="width: 450px;"></textarea></p>
						<p><span class="required">*</span> Are you human?</p>
						<div style="padding-bottom:1.5em;">
							<label style="float:left; margin-right:15px;" for="verify" accesskey="V"><img src="image.php" alt="" /></label>
							<span style="display:block; width:70px; position:relative; float:left;"><input name="verify" type="text" id="verify" size="5" style="width: 50px;" /></span>
							<div class="clear"></div>
						</div>
						<p><input type="submit" class="submit" id="submit" value="Submit" /></p>
					</fieldset>
					</form>
				</div>
			</div>
			<div class="column">
				<h2>Location</h2>
				<div src="/images/parikshitg.jpg" style="width:260px; height:300px;"></div>
				<br />
				<h2>Head Office</h2>
				<address>
					<strong>Address:</strong> 12 Street, Los Angeles, CA, 94101<br />
					<strong>Phone:</strong>   +1 800 123 4567<br />
					<strong>FAX:</strong> +1 800 891 2345<br />
					<strong>Email:</strong> testmail@sitename.com
				</address>
			</div>
			<div class="clear"></div>
		</div>
	<div class="clear"></div>
	</div>
</div>
<!-- End Content Wrapper -->


{{ end }}