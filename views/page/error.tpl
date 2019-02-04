{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
	{{ with .Error }}
	<h2>Error: {{ . }}</h2>
	{{ end }}
{{ end }}