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
				<p>Let us know, if you are Interested in Kalimpong Broadband connection.<br>Send us you questions and queries, lets see what we can do for you.</p>
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
						  <option value="Support">Get Connection</option>
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

			<div class="column" style="float: right;">
				<div class="widget-container widget_recent_projects">
					
					<ul>
						<li>
							<img src="images/parikshitg.jpg" width="260" height="300" alt="" class="pic" />
							<h2>CEO, Rajesh Jain</h2>
							{{ with .Contact }}
							<address>
								<strong>Name:    </strong> {{ .Name }} <br />
								<strong>Email:   </strong> {{ .Email }} <br/>
								<strong>Phone:   </strong>   {{ .Phone1 }}, {{ .Phone2 }}<br />
								<strong>Whatsapp:</strong> {{ .WhatsApp }} <br/>
								<strong>Address:</strong> {{ .Address1 }}, {{ .Address2 }}, {{ .City }}, {{ .State }}, {{ .Pincode }}
							</address>
							{{ end }}
						</li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>
		</div>


	<div class="clear"></div>
	</div>
</div>
<!-- End Content Wrapper -->


{{ end }}
