{{ template "layout/layout.tpl" . }}

{{ define "title" }} About {{ end }}

{{ define "contents" }}
	{{ if .Error }}{{ .Error}}{{ end }}
	{{ if .Page }}
		<!--<h1>{{ .Page.Title }}</h1>-->
		<!--{{ .HtmlBody }} -->
	{{ end }} 
	

	<!-- Start Content Wrapper -->
	<div class="content_wrapper">
		<div class="PageTitle">
			<h1>About Us</h1>
		</div>
		<div id="breadcrumbs">
			<a href="/" title="Home">Home</a> &raquo; About Us
		</div>
		<!-- Content Area -->
		<div id="content">
			<p><img src="images/base.jpg" width="940" height="auto" alt="" /></p>
			<h2>Who We Are</h2>
			<p>{{ .HtmlBody }}</p>
		</div>

		<div class="clear"></div>
	</div>
	<!-- End Content Wrapper -->


{{ end }}