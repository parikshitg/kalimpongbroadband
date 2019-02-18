{{ template "layout/layout.tpl" . }}

{{ define "title" }} Services {{ end }}

{{ define "contents" }}
<!-- Start Content Wrapper -->
<div class="content_wrapper">
	<div class="PageTitle">
		<h1>Our Services</h1>
	</div>
	<div id="breadcrumbs">
		<a href="/" title="Home">Home</a> &raquo; Services
	</div>
	<!-- Content Area -->
	<div id="content">
		<div class="portfolio_three_col">
			<ul>
				{{ range $i, $p := .Services }}
				<li>
					<div class="portfolio_thumb">
						<img src="{{with $p.Image}}/uploads/{{.}}{{else}}/static/img/service.jpg{{end}}" width="277" height="auto"  class="pic" />
					</div>
					<div class="portfolio_det">
						<h2>{{$p.Name}}</h2>
						<p>{{ htmlString $p.Description }} </p>
					</div>
				</li>
				{{ end }}
			</ul>
			<div class="clear"></div>
		</div>
	</div>
</div>
<!-- End Content Wrapper -->
{{ end }}