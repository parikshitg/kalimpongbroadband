{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
	<!--{{ if .Error }}{{ .Error}}{{ end }}
	{{ if .Page }}
		<h1>{{ .Page.Title }}</h1>
		{{ .HtmlBody }}
	{{ end }} -->


<!-- Start Content Wrapper -->
<div class="content_wrapper_sbr">
	<div class="PageTitle">
		<h1>Our Partners</h1>
	</div>
	<div id="breadcrumbs">
		<a href="index.html" title="Home">Home</a> &raquo; Partners
	</div>
	<!-- Content Area -->
	<div id="content">
		<div class="post">
			<div class="post_thumb_alternate"><a href="https://urantiatech.com" target="_blank"><img src="/images/urantiatech.png" width="340" height="110" alt="" class="pic" /></a></div>
			<div class="post_descr_alternate">
				<h2><a href="blog_single.html">UrantiaTech</a></h2>
				<div class="excerpt">
					<p>Donec accumsan malesuada orcidonec sitmet eros lorem isum dolor amet incon. Adipiscing elit maurise pharetra magna acsan.</p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="post">
			<div class="post_thumb_alternate"><a href=""><img src="/images/alliance.png" width="340" height="110" alt="" class="pic" /></a></div>
			<div class="post_descr_alternate">
				<h2><a href="blog_single.html">Alliance Broadband</a></h2>
				<div class="excerpt">
					<p>Donec accumsan malesuada orcidonec sitmet eros lorem isum dolor amet incon. Adipiscing elit maurise pharetra magna acsan.</p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="post">
			<div class="post_thumb_alternate"><a href=""><img src="/images/galaxy.png" width="340" height="110" alt="" class="pic" /></a></div>
			<div class="post_descr_alternate">
				<h2><a href="blog_single.html">Galaxy Broadband</a></h2>
				<div class="excerpt">
					<p>Donec accumsan malesuada orcidonec sitmet eros lorem isum dolor amet incon. Adipiscing elit maurise pharetra magna acsan.</p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<!-- End Content Wrapper -->

{{ end }} 

