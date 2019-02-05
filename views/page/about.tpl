{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
<h1>About Us</h1>
	{{ with .Page }}
		<h1>Title: {{ .Title }}</h1>
		{{ .Body }}
	{{ end }}
{{ end }}