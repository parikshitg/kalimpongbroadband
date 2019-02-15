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
		<div class="columns">
			<div class="column">
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
						  <option value="a Bug fix">Connectivity Issues</option>
						</select></p>
						<p><label for="comments" accesskey="C"><span class="required">*</span> Your comments</label>
						<textarea name="comments"  rows="8" cols="40"  id="comments" style="width: 450px;"></textarea></p>
						<p><input type="submit" class="submit" id="submit" value="Submit" /></p>
					</fieldset>
					</form>
				</div>
			</div>
			<div class="column">
				<div class="widget-container widget_recent_projects">
					<!--<h3>Recent Projects</h3>-->
					<ul>
						<li>
							<img src="images/parikshitg.jpg" width="260" height="300" alt="" class="pic" />
							<h2>CEO, Rajesh Jain</h2>
							{{ with .Contact }}
							<address>
								<strong>Name:</strong> {{ .Name }} <br />
								<strong>Email:</strong> {{ .Email }} <br/>
								<strong>Phone:</strong>   {{ .Phone1 }}, {{ .Phone2 }}<br />
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
