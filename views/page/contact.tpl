{{ template "layout/layout.tpl" . }}

{{ define "title" }} Contact {{ end }}

{{ define "contents" }}
<!-- Start Content Wrapper -->
<div class="content_wrapper">
	<div class="PageTitle">
		<h1>Contact Us</h1>
	</div>
	<div id="breadcrumbs">
		<a href="/" title="Home">Home</a> &raquo; Contact Us
	</div>
	<!-- Content Area -->
	<div id="content">
		<div class="portfolio">
		<img src="/images/location.png" width="940" height="300" alt="" />
		</div>
		<br>

		<div class="columns">
			<div class="column" data-place="2">
				<h2>Get In Touch</h2>
				<p>Send us you questions and queries, lets see what we can do for you.</p>
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
						  <option value="Support">New Connection</option>
						  <option value="a Sale">Recharge</option>
						  <option value="a Bug fix">Conectivity Issues</option>
						  <option value="Ither">Other</option>
						</select></p>
						<p><label for="comments" accesskey="C"><span class="required">*</span> Your comments</label>
						<textarea name="comments"  rows="5" cols="40"  id="comments" style="width: 450px;"></textarea></p>
						<p><input type="submit" class="submit" id="submit" value="Submit" /></p>
					</fieldset>
					</form>
				</div>
			</div>

			<div class="column">
				<div class="widget-container">
					
					<ul>
						<li>
							<img src="/images/rajesh.jpg" width="260" height="auto" alt="" class="pic" />
							<br>
							{{ with .Contact }}
							<h2><strong>{{.Name}}</strong></h2>
							<ul>
								<li><strong>Email:   </strong> {{ .Email }}</li>
								<li><strong>Phone:   </strong>   {{ .Phone1 }}, {{ .Phone2 }}</li>
								<li><strong>Whatsapp:</strong> {{ .WhatsApp }}</li>
								<li><strong>Address:</strong> {{ .Address1 }}, {{ .Address2 }}</li>
								<li>{{ .City }}, {{ .State }}, {{ .Pincode }}</li>
							</ul>
							{{ end }}
						</li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>


	<div class="clear"></div>
	</div>
</div>
<!-- End Content Wrapper -->


{{ end }}
