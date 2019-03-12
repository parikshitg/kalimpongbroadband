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
			<div id="map_canvas"  style="height:300px; width:940px;"></div>
			<!-- <img src="/images/location.png" width="940" height="300" alt="" />  -->
			{{ with .Contact }}
			<script type="text/javascript">
				// Initialize and add the map
				function initMap() {
					// The location of location
					var location = {
						 lat:  {{ .Latitude }},
						 lng:  {{ .Longitude }} 
						};
					// The map, centered at location
					var map = new google.maps.Map(
					    document.getElementById('map_canvas'), {zoom: 4, center: location});
					// The marker, positioned at location
					var marker = new google.maps.Marker({position: location, map: map});
				}
			</script>
			<script async defer
			    src="https://maps.googleapis.com/maps/api/js?key={{.GoogleMapKey}}&callback=initMap">
			</script>
			{{ end }}
		</div>

		<br>

		{{ if .Flash }}
		<div class="succsess_box">
			<p>{{.Flash}}</p>
		</div>
		{{ end }}
		{{ if .Error }}
		<div class="error_box">
			<p>{{.Error}}</p>
		</div>
		{{ end}}

		<div class="columns">
			<div class="column" data-place="2">
				<h2>Get In Touch</h2>
				<p>Send us you questions and queries, lets see what we can do for you.</p>
				<div class="hr_610"></div>
				<h2>Send Us Mail</h2>
				<!-- Start Contact Form -->
				<div id="contact">										
					<form method="post" action="/contact" name="contactform" >
                    <input type="hidden" name="gorilla.csrf.Token" value="{{ .CSRFToken }}">
					<fieldset>
						<p><label for="name" accesskey="U"><span class="required">*</span> Your Name</label>
						<input name="name" type="text" id="name" size="50" value="" /></p>
						<p><label for="email" accesskey="E"><span class="required">*</span> Email</label>
						<input name="email" type="text" id="email" size="50" value="" /></p>
						<p><label for="phone" accesskey="P"><span class="required">*</span> Phone</label>
						<input name="phone" type="text" id="phone" size="50" value="" /></p>
						<p><label for="subject" accesskey="S">Subject</label>
						<select name="subject" id="subject">
						  <option value="New Connection">New Connection</option>
						  <option value="Recharge">Recharge</option>
						  <option value="Connectivity Issues">Conectivity Issues</option>
						  <option value="Other">Other</option>
						</select></p>
						<p><label for="body" accesskey="C"><span class="required">*</span> Your inquiry</label>
						<textarea name="body"  rows="5" cols="40"  id="body" style="width: 450px;"></textarea>
						</p>
						<p><input type="submit" class="submit" id="submit" value="Submit" /></p>
					</fieldset>
					</form>
				</div>
			</div>

			<div class="column">
				<div class="widget-container">
					{{ with .Contact }}
					<img src="{{with .Image}}/uploads/contact/{{.}}{{else}}/static/img/contact.jpg{{end}}" width="260" height="auto" alt="" class="pic" />					
					<ul>
						<li>
							<br>
							
							<h2><strong>{{.Name}}</strong></h2>
							<ul>
								<li><strong>Email:   </strong> {{ .Email }}</li>
								<li><strong>Phone:   </strong>   {{ .Phone1 }}, {{ .Phone2 }}</li>
								<li><strong>Whatsapp:</strong> {{ .WhatsApp }}</li>
								<li><strong>Address:</strong> {{ .Address1 }}, {{ .Address2 }}</li>
								<li>{{ .City }}, {{ .State }}, {{ .Pincode }}</li>
							</ul>
						</li>
					</ul>
					{{ end }}
					<div class="clear"></div>
				</div>
			</div>
		</div>
	<div class="clear"></div>
	</div>
</div>
<!-- End Content Wrapper -->


{{ end }}
