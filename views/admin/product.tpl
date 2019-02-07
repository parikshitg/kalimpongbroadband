{{ template "admin/layout.tpl" . }}

{{ define "contents" }}
  <div class="subtitle"> {{with .Product}}Edit{{else}}Add New{{end}} Product</div>

	<form method="POST" action="/admin/products">
    <input type="hidden" name="op" value="add">
		<input type="hidden" name="slug" value="{{with .Product}}{{.Slug}}{{end}}">
        <input class="input" type="text" name="name" value="{{with .Product}}{{.Name}}{{end}}" placeholder="Product Name">
		<br>
		<br>
		<input id="x" type="hidden" name="description" value="{{with .Product}}{{.Description}}{{end}}">
		<trix-editor class="trix-content" input="x"></trix-editor>
		<br>
		<input type="submit" class="button is-primary" value="{{if .Product}}Update{{else}}Add Product{{end}}">
	</form>
{{ end }}