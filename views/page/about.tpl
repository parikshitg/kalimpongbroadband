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
			<p><img src="/images/about.jpg" width="940" height="auto" alt="" /></p>
			<h1>Who We Are</h1>
			<p>{{ .HtmlBody }}</p>


			<br>
    <div class="portfolio_three_col">
    	<h1>Business Partners</h1>
      <ul>
        <li>
          <div class="portfolio_thumb">
            <a href="https://www.urantiatech.com" target="_blank"><img src="/images/urantiatech.png" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <a href="http://alliancebroadband.co.in" target="_blank"><img src="/images/alliance.png" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <a href="http://www.galaxybroadband.in" target="_blank"><img src="/images/galaxy.png" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
        </li>
      </ul>
    </div>

		</div>

	</div>
	<!-- End Content Wrapper -->


{{ end }}