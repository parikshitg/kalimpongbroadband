{{ template "layout/layout.tpl" . }}

{{ define "title" }} Products {{ end }}

{{ define "contents" }}	
	<!-- Start Content Wrapper -->
	<div class="content_wrapper">
		<div class="PageTitle">
			<h1>Products </h1>
		</div>
		<div id="breadcrumbs">
			<a href="/" title="Home">Home</a> &raquo; Products
		</div>
		<!-- Content Area -->
		<div id="content">
			<div class="portfolio_four_col">
				<ul>
					{{ range $i, $p := .Products }}
					<li>
						<div class="portfolio_thumb">
							<img src="{{with $p.Image}}/uploads/{{.}}{{else}}/static/img/product.jpg{{end}}" width="210" class="pic" />
						</div>
						<div class="portfolio_det">
							<h2>{{ $p.Name }}</h2>
							<p>{{ htmlString $p.Description }}</p>
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