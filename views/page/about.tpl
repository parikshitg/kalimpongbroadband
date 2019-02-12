{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
	{{ if .Error }}{{ .Error}}{{ end }}
	{{ if .Page }}
		<!--<h1>{{ .Page.Title }}</h1>-->
		<!--{{ .HtmlBody }} -->
	{{ end }} 
	

	<!-- Start Content Wrapper -->
	<div class="content_wrapper_sbr">
		<div class="PageTitle">
			<h1>About Company</h1>
		</div>
		<div id="breadcrumbs">
			<a href="/" title="Home">Home</a> &raquo; About Us
		</div>
		<!-- Content Area -->
		<div id="content">
			<p><img src="images/base.jpg" width="620" height="425" alt="" /></p>
			<h2>Who We Are</h2>
			<p>{{ .HtmlBody }}</p>
			<!--<p>Donec accumsan malesuada orcidonec sitmet eros lorem isum dolor amet incon. Adipiscing elit maurise pharetra magna accumsan. Malesuada orcdonec umet lorem doloronsec malesuada. Udipiscing elit mauris sifermentum. Tellus dolor, dapibus eget, elementum. Unean auctor wisi et urna. Aliquam erat volutpat.  Quisque vitae sem in massa viverra laoreet vitae at lectus. Phasellus sem est, posuere at sollicitudin a, eleifend vel mauris. Praesent quis erat eget ipsum vulputate volutpat. Nulla facilisi. Cras gravida elit nec libero accumsan mattis. Maecenas ut sem eu nulla euismod tincidunt in vitae diam. Sed lectus dui, varius nec laoreet ac, cursus vel quam. In tempus velit ut massa lobortis a facilisis neque dapibus.</p>
			<p>Quisque enim nulla, suscipit eu porttitor et, bibendum vitae sapien. Nulla a tellus lectus, facilisis porta nunc. Pellentesque ante lacus, congue non lobortis in, vehicula sit amet nisi. Donec accumsan malesuada orcidonec sitmet eros lorem isum dolor amet incon. Adipiscing elit maurise pharetra magna accumsan. 
	Malesuada orcdonec umet lorem doloronsecada. Udipiscing elit mauris sifermentum. Tellus dolor, dapibus eget, elementum. Unean auctor wisi et urna. Aliquam erat volutpat. Adipiscing elit. Maurisfetun Duis ultricies pharetra magna.</p>-->
			<!--<div class="hr"></div>-->
			<!--<h2>Our Team</h2>
			<div class="columns">
				<div class="column">
					<img src="images/team_thumb.jpg" width="92" height="92" alt="" class="pic alignleft" />
					<h4>Tim Johnson</h4>
					<p>Donec acumsan malda orcidonec sitmet eros lorem isum dolor amet.</p>
					<div class="clear"></div>
				</div>
				<div class="column">
				  <img src="images/team_thumb.jpg" width="92" height="92" alt="" class="pic alignleft" />
				  <h4>Tim Johnson</h4>
					<p>Donec acumsan malda orcidonec sitmet eros lorem isum dolor amet.</p>
					<div class="clear"></div>
			  </div>
				<div class="clear"></div>
			</div>-->
		</div>
		<!-- Sidebar Area -->
		<div id="sidebar">
			<div class="widget-container widget_tabbed">
				<!-- Start Tabbed Box Container -->
				<!-- Tabs Menu -->
				<ul class="tab-items">
					<li><a href="#tabs-1" title="Popular">Places</a></li>
				</ul>
				<!-- Tab Container for menu with ID tabs-1 -->
				<div class="tabs-inner" id="tabs-1">
					<ul>
						<li>
							<a href="blog_single.html"><img src="images/content/sidebar_p_01.jpg" width="60" height="55" alt="" class="pic alignleft" /></a>
							<b><a href="blog_single.html">Kalimpong</a></b>
							<span class="date">Kalimpong Market,Sherpagaon,Relli & near by areas.</span>
							<div class="clear"></div>
						</li>
						<li>
							<a href="blog_single.html"><img src="images/content/sidebar_p_02.jpg" width="60" height="55" alt="" class="pic alignleft" /></a>
							<b><a href="blog_single.html">Kurseong</a></b>
							<span class="date">Kurseong market and near by areas.</span>
							<div class="clear"></div>
						</li>
						<li>
							<a href="blog_single.html"><img src="images/content/sidebar_p_03.jpg" width="60" height="55" alt="" class="pic alignleft" /></a>
							<b><a href="blog_single.html">Bijanbari</a></b>
							<span class="date">Bijanbari and near by areas.</span>
							<div class="clear"></div>
						</li>
					</ul>
				</div>
			</div>
			<div class="column">
				<h2>Services List</h2>
				<ul class="unordered type18">
					<li>Wi-Fi/Broadband Connection</li>
					<li>CCTV camera & Installation</li>
					<li>Computer Accesories</li>
					<li>Electrical items & Home wiring </li>
					<li>Inverter & installation</li>
					<li>Television</li>
					<li>Geyser</li>
				</ul>
			</div>
			<!-- End Tabbed Box Container -->
			<!-- Recent Projects Slider -->
		</div>
		<div class="clear"></div>
	</div>
	<!-- End Content Wrapper -->


{{ end }}