{{ template "admin/layout.tpl" . }}

{{ define "contents" }}
    <div class="columns is-multiline">
      <div class="column">
          <table class="table is-bordered is-striped is-narrow is-fullwidth">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Image</th>
                  <th>Slug</th>
                  <th>Product Name</th>
                  <th>Edit / Delete</th>
                </tr>
              </thead>
              <tbody>
				{{ range $i, $p := .Products }}
                <tr>
                  <th>{{$p.ID}}</th>
                  <td><img src="{{with $p.Image}}/uploads/products/{{.}}{{else}}/static/img/product.jpg{{end}}" width="100px" height="auto"></td>
                  <td>{{$p.Slug}}</td>
                  <td>{{$p.Name}}</td>
                  <td>
                  	<a href="/admin/product?op=edit&slug={{$p.Slug}}" class="button is-primary">Edit</a>
                  	<a href="/admin/product?op=remove&slug={{$p.Slug}}" class="button is-danger">Delete</a>
                  </td>
                </tr>
                {{ end }}
              </tbody>
            </table>
            <a href="/admin/product?op=create" class="button is-primary">Add New Product</a>
        </div>
    </div>
{{ end }}
