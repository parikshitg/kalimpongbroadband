{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
	<!--{{ if .Error }}{{ .Error}}{{ end }}
	{{ if .Page }}
		<h1>{{ .Page.Title }}</h1>
		{{ .HtmlBody }}
	{{ end }}-->
	<h2>This is the content of products page.</h2>
{{ end }}