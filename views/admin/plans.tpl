{{ template "admin/layout.tpl" . }}

{{ define "contents" }}       
        <div class="columns is-multiline">
          <div class="column is-10">
          		<!-- Headings start -->
	            <div class="field is-horizontal">
	              <div class="field-body">
	                <div class="field">
						<div class="columns">
						  <div class="column"> <b>Plan Name</b> </div>
						  <div class="column"> <b>Provider</b> </div>
						  <div class="column"> <b>Speed</b> </div>
						  <div class="column"> <b>Montly Rental</b> </div>
						  <div class="column"> <b>Annual Rental</b> </div>
						</div>
					</div>
	              </div>
	            </div>
          		<!-- Headings end -->
          </div>

          <div class="column is-11">
	            {{ range $i, $p := .Plans }}
	            <!-- Show existing plan starts -->
	          	<form method="POST" action="/admin/plans">
	            <div class="field is-horizontal">
	              <div class="field-body">

	                <div class="field">
	                  <p class="control is-expanded">
	                  	<input type="hidden" name="op" value="update">
	                  	<input type="hidden" name="slug" value="{{$p.Slug}}">
	                    <input class="input" type="text" name="name" value="{{$p.Name}}" placeholder="Plan Name">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="provider" value="{{$p.Provider}}" placeholder="Provider">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="speed" value="{{$p.Speed}}" placeholder="Speed">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="monthly" value="{{$p.MonthlyRental}}" placeholder="Monthly Rental">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="annual" value="{{$p.AnnualRental}}" placeholder="Annual Rental">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                  	<div class="columns">
	                  		<div class="column">
					            <input type="submit" class="button is-primary" value="&nbsp;&nbsp;Update&nbsp;&nbsp;">	
	                  		</div>
	                  	</div>
	                  </p>
	                </div>
	              </div>
	            </div>
	            </form>
	            <!-- Show existing plan ends -->
	            {{ end }}
	            
	            <!-- Add New Plan start -->
	          	<form method="POST" action="/admin/plans">
	            <div class="field is-horizontal">
	              <div class="field-body">
	                <div class="field">
	                  <p class="control is-expanded">
	                  	<input type="hidden" name="slug" value="">
	                  	<input type="hidden" name="op" value="create">
	                    <input class="input" type="text" name="name" value="{{.Name}}" placeholder="Plan Name">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="provider" value="{{.Provider}}" placeholder="Provider">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="speed" value="{{.Speed}}" placeholder="Speed">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="monthly" value="{{.MonthlyRental}}" placeholder="Monthly Rental">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                    <input class="input" type="text" name="annual" value="{{.AnnualRental}}" placeholder="Annual Rental">
	                  </p>
	                </div>
	                <div class="field">
	                  <p class="control is-expanded">
	                  	<div class="columns">
	                  		<div class="column">
					            <input type="submit" class="button is-primary" value="&nbsp;Add Plan&nbsp;">	
	                  		</div>
	                  	</div>
	                  </p>
	                </div>
	              </div>
	            </div>
		        </form>
	            <!-- Add New Plan start -->
          </div>
        </div>
{{ end }}