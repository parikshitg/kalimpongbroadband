{{ template "admin/layout.tpl" . }}

{{ define "contents" }}

  	{{ with .Error}}
    <div class="notification is-danger">
      <button class="delete"></button> {{ . }}
    </div>
    {{ end}}

	<form method="POST" action="/admin/product" enctype="multipart/form-data">
    <input type="hidden" name="op" value="add">
		<input type="hidden" name="title" value="{{.Title}}">
		<input type="hidden" name="slug" value="{{with .Product}}{{.Slug}}{{end}}">
        <input class="input" type="text" name="name" value="{{with .Product}}{{.Name}}{{end}}" placeholder="Product Name">
		<br>
		<br>
		<input id="x" type="hidden" name="description" value="{{with .Product}}{{.Description}}{{end}}">
		<trix-editor class="trix-content" input="x"></trix-editor>
		<br>
        
        {{ with .Product}}
        	{{ with .Image}}
	        <input type="hidden" name="oldimage" value="{{.}}">
	        <img src="/uploads/products/{{.}}" width="100px" height="auto">
	        {{ else }}
	        <img src="/static/img/product.jpg" width="100px" height="auto">
        	{{ end }}
        {{end}}

		<div class="file">
		  <label class="file-label">
		    <input class="file-input" type="file" id="image" name="image" value="{{with .Product}}{{.Image}}{{end}}">
		    <span class="file-cta">
		      <span class="file-icon">
		        <i class="fa fa-upload"></i>
		      </span>
		      <span class="file-label">
		        Select Image
		      </span>
		    </span>
		  </label>
		</div>
		<br>
		<input type="submit" class="button is-primary" value="{{if .Product}}Update{{else}}Add Product{{end}}">
	</form>
{{ end }}