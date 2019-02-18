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
            <a href="http://www.youtube.com/watch?v=GgR6dyzkKHI" data-rel="prettyPhoto[gallery]"><img src="/images/urantiatech.png" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">UrantiaTech</a></h2>
            <p>Website, Mobile Apps &amp; Web Hosting</p>
            <div class="clear"></div>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <a href="http://vimeo.com/7449107" data-rel="prettyPhoto[gallery]"><img src="/images/alliance.png" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">Alliance Broadband</a></h2>
            <p></p>
            <div class="clear"></div>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <a href="http://www.youtube.com/watch?v=1iIZeIy7TqM?width=640&height=360" data-rel="prettyPhoto[gallery]"><img src="/images/galaxy.png" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">Gallaxy Broadband</a></h2>
            <p></p>
            <div class="clear"></div>
          </div>
        </li>
      </ul>
    </div>

    <div class="columns">
      <div class="column">
        <h2 class="icon web">Works Everywhere</h2>
        <p>Donec accumsan malesuada orcidonec sitmet<br>eros lorem isum dolor amet incon. Adipiscing elit maurise pharetra magna accumsan. Malesuada orcdonec umet lorem doloronsec.</p>
        <a href="#" title="read more" class="btn alignleft">read more</a>
        <div class="clear"></div>
      </div>
      <div class="column">
        <h2 class="icon graph">Easy to Customize</h2>
        <p>Donec accumsan malesuada orcidonec sitmet<br>eros lorem isum dolor amet incon. Adipiscing elit maurise pharetra magna accumsan. Malesuada orcdonec umet lorem doloronsec.</p>
        <a href="#" title="read more" class="btn alignleft">read more</a>
        <div class="clear"></div>
      </div>
      <div class="column">
        <h2 class="icon book">Full Documentation</h2>
        <p>Donec accumsan malesuada orcidonec sitmet<br>eros lorem isum dolor amet incon. Adipiscing elit maurise pharetra magna accumsan. Malesuada orcdonec umet lorem doloronsec.</p>
        <a href="#" title="read more" class="btn alignleft">read more</a>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>

		</div>




		<div class="clear"></div>
	</div>
	<!-- End Content Wrapper -->


{{ end }}