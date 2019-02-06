{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
	{{ if .Error }}{{ .Error}}{{ end }}
	{{ if .Page }}
		<h1>{{ .Page.Title }}</h1>
		{{ .HtmlBody }}
	{{ end }}
{{ end }}