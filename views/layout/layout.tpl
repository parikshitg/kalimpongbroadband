<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" href="img/favicon.ico" />

	<style type="text/css">
		@import url(css/light/styles.css);		/*link to the main CSS file */
	</style>
  	
  	<title>Kalimpong Broadband | {{ block "title" . }} {{ end }}</title>

</head>
<body id="sp">
	{{ template "partial/menubar.tpl" }}
	{{ template "partial/header.tpl" }}
	{{ block "contents" . }} {{ end }}
	{{ template "partial/footer.tpl" }}

	<!--contact -->
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script type="text/javascript">
		function initialize() {
			var latlng = new google.maps.LatLng(40.72, -74);
			var myOptions = {
				zoom: 12,
				center: latlng,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById("map_canvas"),
					myOptions);
	}
	</script>


	<!-- Initialise jQuery Library -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/cufon/cufon-yui.js"></script>

	<!-- Theme Hook -->
	<script type="text/javascript" src="js/Includer.js"></script>
	<script type="text/javascript">Cufon.now();</script>

</body>
</html>