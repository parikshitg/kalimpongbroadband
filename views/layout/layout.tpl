<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" href="/images/favicon.png" />

	<style type="text/css">
		@import url(css/light/styles.css);		/*link to the main CSS file */
	</style>
  	
  	<title>Kalimpong Broadband - {{ block "title" . }} {{ end }}</title>

</head>
<body id="sp">
	{{ template "partial/menubar.tpl" . }}
	{{ template "partial/header.tpl" . }}

	{{ block "contents" . }} {{ end }}
	
	{{ template "partial/footer.tpl" }}

	<!-- Initialise jQuery Library -->
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/cufon/cufon-yui.js"></script>

	<!-- Theme Hook -->
	<script type="text/javascript" src="/js/Includer.js"></script>
	<script type="text/javascript">Cufon.now();</script>

</body>
</html>