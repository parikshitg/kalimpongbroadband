{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
	<!--{{ if .Error }}{{ .Error}}{{ end }}
	{{ if .Page }}
		<h1>{{ .Page.Title }}</h1>
		{{ .HtmlBody }}
	{{ end }} -->

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
				<li>
					<div class="portfolio_thumb">
						<a data-rel="prettyPhoto[gallery]"><img src="/images/cctv.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
					</div>
					<div class="portfolio_det">
						<h2><a href="portfolio_single.html">CCTV & Camera</a></h2>
						<p>We also supply CCTv camera. CP Plus and Hikvision CCtv cameras are available. Installation of CCtv are also done by us. General charges or installtion are ₹2500 for 8 cameras and ₹1500 for 4 cameras. </p>
						<div class="clear"></div>
					</div>
				</li>
				<li>
					<div class="portfolio_thumb">
						<a data-rel="prettyPhoto[gallery]"><img src="/images/desktop.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
					</div>
					<div class="portfolio_det">
						<h2><a href="portfolio_single.html">Computer Accesories</a></h2>
						<p>We also supply all kinds of computer accesories. Monitor,keyboard,mouse,CPU,pendrive,hardisks,SSD,Web cam,etc. of latest and popular brands are available .</p>
						<div class="clear"></div>
					</div>
				</li>
				<li>
					<div class="portfolio_thumb">
						<a data-rel="prettyPhoto[gallery]"><img src="/images/homewiring.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span></a>
					</div>
					<div class="portfolio_det">
						<h2><a href="portfolio_single.html">Electrical items & Home wiring</a></h2>
						<p>All types of electrical items like switches, bulb,LED lights,boards, all types of wires are available. We also do home wiring .</p>
						<div class="clear"></div>
					</div>
				</li>
				<li>
					<div class="portfolio_thumb">
						<a data-rel="prettyPhoto[gallery]"><img src="/images/inverter.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_img"></span></a>
					</div>
					<div class="portfolio_det">
						<h2><a href="portfolio_single.html">Inverter & Installation</a></h2>
						<p>We also provide interverter and battries. Microtek and Luminous Inverter are available. Installation of inverter and wiring is also done for free.</p>
						<div class="clear"></div>
					</div>
				</li>
				<li>
					<div class="portfolio_thumb">
						<a data-rel="prettyPhoto[gallery]"><img src="/images/mitv.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_img"></span></a>
					</div>
					<div class="portfolio_det">
						<h2><a href="portfolio_single.html">Television</a></h2>
						<p>We also supply all kinds of Televisions LCD,LED of all screen sizes and latest brands. Brands like Mi,Intex,Panorama etc are available.</p>
						<div class="clear"></div>
					</div>
				</li>
				<li>
					<div class="portfolio_thumb">
						<a data-rel="prettyPhoto[gallery]"><img src="/images/geyser.jpg" width="277" height="154" alt="" class="pic" /><span class="hover_img"></span></a>
					</div>
					<div class="portfolio_det">
						<h2><a href="portfolio_single.html">Geyser</a></h2>
						<p>Gyser of different capacities are available. Cost depends as per seasons and free installtion.</p>
						<div class="clear"></div>
					</div>
				</li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
</div>
<!-- End Content Wrapper -->


{{ end }}