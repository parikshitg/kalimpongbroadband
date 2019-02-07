{{ template "admin/layout.tpl" . }}

{{ define "contents" }}
    <div class="columns is-multiline">
      <div class="column">
          <table class="table is-bordered is-striped is-narrow is-fullwidth">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Slug</th>
                  <th>Product Name</th>
                  <th>Update Product</th>
                </tr>
              </thead>
              <tbody>
				{{ range $i, $p := .Products }}
                <tr>
                  <th>{{$p.ID}}</th>
                  <td>{{$p.Slug}}</td>
                  <td>{{$p.Name}}</td>
                  <td>
                  	<a href="/admin/products?op=edit&slug={{$p.Slug}}" class="button is-primary">Edit</a>
                  	<a href="/admin/products?op=remove&slug={{$p.Slug}}" class="button is-danger">Delete</a>
                  </td>
                </tr>
                {{ end }}
              </tbody>
            </table>
            <a href="/admin/products?op=create" class="button is-primary">Add New Product</a>
        </div>
    </div>
{{ end }}