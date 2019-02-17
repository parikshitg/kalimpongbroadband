{{ template "layout/layout.tpl" . }}

{{ define "title" }} Products {{ end }}

{{ define "contents" }}
	<!--{{ if .Error }}{{ .Error}}{{ end }}
	{{ if .Page }}
		<h1>{{ .Page.Title }}</h1>
		{{ .HtmlBody }}
	{{ end }}-->
	
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
							<img src="{{with $p.Image}}/uploads/{{.}}{{else}}/static/img/product.jpg{{end}}" width="210" height="220" alt="" class="pic" /><span class="hover_vid"></span>
						</div>
						<div class="portfolio_det">
							<h2><a href="portfolio_single.html">{{ $p.Name }}</a></h2>
							<p>{{ htmlString $p.Description }}</p>
							<div class="clear"></div>
						</div>
					</li>
					{{ end }}
					<!--<li>
						<div class="portfolio_thumb">
							<a href="http://vimeo.com/7449107" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_4_02.jpg" width="210" height="220" alt="" class="pic" /><span class="hover_vid"></span></a>
						</div>
						<div class="portfolio_det">
							<h2><a href="portfolio_single.html">Proin iaculis viverra</a></h2>
							<p>Malesuada orcidonec sitmet eros lorem isum dolor amet incon...</p>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<div class="portfolio_thumb">
							<a href="http://www.youtube.com/watch?v=1iIZeIy7TqM?width=640&height=360" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_4_03.jpg" width="210" height="220" alt="" class="pic" /><span class="hover_vid"></span></a>
						</div>
						<div class="portfolio_det">
							<h2><a href="portfolio_single.html">Ut non dolor</a></h2>
							<p>Malesuada orcidonec sitmet eros lorem isum dolor amet incon...</p>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<div class="portfolio_thumb">
							<a href="gallery/fullsize/folio_4_04.jpg" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_4_04.jpg" width="210" height="220" alt="" class="pic" /><span class="hover_img"></span></a>
						</div>
						<div class="portfolio_det">
							<h2><a href="portfolio_single.html">Cras scelerisque</a></h2>
							<p>Malesuada orcidonec sitmet eros lorem isum dolor amet incon...</p>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<div class="portfolio_thumb">
							<a href="gallery/fullsize/folio_4_05.jpg" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_4_05.jpg" width="197" height="154" alt="" class="pic" /><span class="hover_img"></span></a>
						</div>
						<div class="portfolio_det">
							<h2><a href="portfolio_single.html">Fusce odio mi</a></h2>
							<p>Malesuada orcidonec sitmet eros lorem isum dolor amet incon...</p>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<div class="portfolio_thumb">
							<a href="gallery/fullsize/folio_4_06.jpg" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_4_06.jpg" width="197" height="154" alt="" class="pic" /><span class="hover_img"></span></a>
						</div>
						<div class="portfolio_det">
							<h2><a href="portfolio_single.html">Aenean fermentum</a></h2>
							<p>Malesuada orcidonec sitmet eros lorem isum dolor amet incon...</p>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<div class="portfolio_thumb">
							<a href="gallery/fullsize/folio_4_07.jpg" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_4_07.jpg" width="197" height="154" alt="" class="pic" /><span class="hover_img"></span></a>
						</div>
						<div class="portfolio_det">
							<h2><a href="portfolio_single.html">Vestibulum libero</a></h2>
							<p>Malesuada orcidonec sitmet eros lorem isum dolor amet incon...</p>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<div class="portfolio_thumb">
							<a href="gallery/fullsize/folio_4_08.jpg" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_4_08.jpg" width="197" height="154" alt="" class="pic" /><span class="hover_img"></span></a>
						</div>
						<div class="portfolio_det">
							<h2><a href="portfolio_single.html">Sed urna sapien</a></h2>
							<p>Malesuada orcidonec sitmet eros lorem isum dolor amet incon...</p>
							<div class="clear"></div>
						</div>
					</li>-->
				</ul>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!-- End Content Wrapper -->


{{ end }}