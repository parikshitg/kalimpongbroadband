<div class="header_full sample_10">
	<div class="head_top_shadow"></div>
	<div class="head_bot_shadow"></div>
	<div id="header">
		{{ if activeURI .URI "/" }} {{ template "partial/slideshow.tpl" . }} {{ end }}
	</div>
</div>