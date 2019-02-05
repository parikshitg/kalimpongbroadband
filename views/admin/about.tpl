{{ template "admin/layout.tpl" . }}


{{ define "contents" }}
	<div class="trix-content">
		{{ .HtmlBody }}
	</div>
	<br>
	<form method="POST" action="/admin/about">
		<input id="x" type="hidden" name="body" value="{{.Body}}">
		<trix-editor class="trix-content" input="x"></trix-editor>
		<br>
		<input type="submit" class="button is-primary" value="Save">
	</form>
{{ end }}