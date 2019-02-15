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


			<br>
    <div class="portfolio_three_col">
    	<h2>Business Partners</h2>
      <ul>
        <li>
          <div class="portfolio_thumb">
            <a href="http://www.youtube.com/watch?v=GgR6dyzkKHI" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_3_01.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">UrantiaTech</a></h2>
            <p>Website, Mobile Apps &amp; Web Hosting</p>
            <div class="clear"></div>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <a href="http://vimeo.com/7449107" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_3_02.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">Alliance Broadband</a></h2>
            <p></p>
            <div class="clear"></div>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <a href="http://www.youtube.com/watch?v=1iIZeIy7TqM?width=640&height=360" data-rel="prettyPhoto[gallery]"><img src="gallery/thumb/folio_3_03.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">Gallaxy Broadband</a></h2>
            <p></p>
            <div class="clear"></div>
          </div>
        </li>
      </ul>
    </div>

		</div>




		<div class="clear"></div>
	</div>
	<!-- End Content Wrapper -->


{{ end }}