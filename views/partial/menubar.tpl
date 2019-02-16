<div class="mainnav_full">
	<div id="MainNav">
		<a href="/" class="logo"><img src="images/logo-kalimpongbroadband.png" width="250" height="50" alt="" /></a>
		<div id="menu">
			<ul class="ddsmoothmenu">
				<li {{ if activeURI .URI "/" }}class="current-menu-item"{{ end }}>
					<span class="menuslide"></span><a href="/" title="Home">Home<span class="menu_description">Homepage</span></a>
				</li>
				<li {{ if activeURI .URI "/about" }}class="current-menu-item"{{ end }}>
					<span class="menuslide"></span><a href="/about" title="About">About<span class="menu_description">About Us</span></a>
				</li>
				<li {{ if activeURI .URI "/plans" }}class="current-menu-item"{{ end }}>
					<span class="menuslide"></span><a href="/plans" title="Plans">Plans<span class="menu_description">Plans</span></a>
				</li>
				<li {{ if activeURI .URI "/services" }}class="current-menu-item"{{ end }}>
					<span class="menuslide"></span><a href="/services" title="Services">Services<span class="menu_description">Our Services</span></a>
				</li>
				<li {{ if activeURI .URI "/products" }}class="current-menu-item"{{ end }}>
					<span class="menuslide"></span><a href="/products" title="Products">Products<span class="menu_description">Our Products</span></a>
				</li>
				<li {{ if activeURI .URI "/contact" }}class="current-menu-item"{{ end }}>
					<span class="menuslide"></span><a href="/contact" title="Contact">Contact<span class="menu_description">Contact Us</span></a>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</div>