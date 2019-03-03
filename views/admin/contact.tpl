{{ template "admin/layout.tpl" . }}

{{ define "contents" }}

        <div class="columns is-multiline">
          <div class="column is-9">

          	<form method="POST" action="/admin/contact" enctype="multipart/form-data">

	            <div class="field is-horizontal">
	              <div class="field-label is-normal">
	                <label class="label">Contact Person</label>
	              </div>
	              <div class="field-body">
	                <div class="field">
	                  <p class="control is-expanded has-icons-left">
	                    <input class="input" type="text" name="name" value="{{ with .Contact}}{{.Name}}{{end}}" placeholder="Name">
	                    <span class="icon is-small is-left">
	                      <i class="fa fa-user"></i>
	                    </span>
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded has-icons-left has-icons-right">
	                    <input class="input is-success" type="email" name="email" value="{{ with .Contact}}{{.Email}}{{end}}" placeholder="Email">
	                    <span class="icon is-small is-left">
	                      <i class="fa fa-envelope"></i>
	                    </span>
	                    <span class="icon is-small is-right">
	                      <i class="fa fa-check"></i>
	                    </span>
	                  </p>
	                </div>
	              </div>
	            </div>
	            
	            <br>

	            <div class="field is-horizontal">
	              <div class="field-label is-normal">
	                <label class="label">Contact Numbers</label>
	              </div>
	              <div class="field-body">
	                <div class="field is-expanded">
	                  <div class="field has-addons">
	                    <p class="control">
	                      <a class="button is-static">
	                        Phone 1
	                      </a>
	                    </p>
	                    <p class="control is-expanded">
	                      <input class="input" type="tel" name="phone1" value="{{ with .Contact}}{{.Phone1}}{{end}}" placeholder="Your phone number">
	                    </p>
	                  </div>
	                </div>
	                <div class="field is-expanded">
	                  <div class="field has-addons">
	                    <p class="control">
	                      <a class="button is-static">
	                        Phone 2
	                      </a>
	                    </p>
	                    <p class="control is-expanded">
	                      <input class="input" type="tel" name="phone2" value="{{ with .Contact}}{{.Phone2}}{{end}}" placeholder="Your phone number">
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>

	            <div class="field is-horizontal">
	              <div class="field-label"></div>
	              <div class="field-body">
	                <div class="field is-expanded">
	                  <div class="field has-addons">
	                    <p class="control">
	                      <a class="button is-static">
	                        Phone 3
	                      </a>
	                    </p>
	                    <p class="control is-expanded">
	                      <input class="input" type="tel" name="phone3" value="{{ with .Contact}}{{.Phone3}}{{end}}" placeholder="Your phone number">
	                    </p>
	                  </div>
	                </div>
	                <div class="field is-expanded">
	                  <div class="field has-addons">
	                    <p class="control">
	                      <a class="button is-static">
	                        WhatsApp
	                      </a>
	                    </p>
	                    <p class="control is-expanded">
	                      <input class="input" type="tel" name="whatsapp" value="{{ with .Contact}}{{.WhatsApp}}{{end}}" placeholder="Your phone number">
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	            
	            <br>

	            <div class="field is-horizontal">
	              <div class="field-label is-normal">
	                <label class="label">Address</label>
	              </div>
	              <div class="field-body">
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="address1" value="{{ with .Contact}}{{.Address1}}{{end}}" placeholder="House#, Building Name">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="address2" value="{{ with .Contact}}{{.Address2}}{{end}}" placeholder="Street, Locality">
	                  </p>
	                </div>
	              </div>
	            </div>

	            <div class="field is-horizontal">
	              <div class="field-label is-normal">
	              </div>
	              <div class="field-body">
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="city" value="{{ with .Contact}}{{.City}}{{end}}" placeholder="City / Town">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="state" value="{{ with .Contact}}{{.State}}{{end}}" placeholder="State">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="pincode" value="{{ with .Contact}}{{.Pincode}}{{end}}" placeholder="Pincode">
	                  </p>
	                </div>
	              </div>
	            </div>

	            <br>

	            {{ with .Contact}}
		        	{{ with .Image}}
			        <input type="hidden" name="oldimage" value="{{.}}">
			        <img src="/uploads/{{.}}" width="100px" height="auto">
			        {{ else }}
			        <img src="/static/img/product.jpg" width="100px" height="auto">
		        	{{ end }}
		        {{end}}

				<div class="file">
				  <label class="file-label">
				    <input class="file-input" type="file" id="image" name="image" value="{{with .Contact}}{{.Image}}{{end}}">
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

	            <div class="field is-horizontal">
	              <div class="field-label is-normal">
	              </div>
	              <div class="field-body">
	                <div class="field">
	                  <p class="control is-expanded">
						<input type="submit" class="button is-primary" value="Submit">
	                  </p>
	                </div>
	              </div>
	            </div>

			</form>

          </div>
        </div>
{{ end }}