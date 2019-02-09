{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
	<!--{{ if .Error }}{{ .Error}}{{ end }}
	{{ if .Page }}
		<h1>{{ .Page.Title }}</h1>
		{{ .HtmlBody }}
	{{ end }}-->


  <!-- Start Content Wrapper -->
  <div class="content_wrapper">
    <div class="PageTitle">
      <h1>Broadband Plans</h1>
    </div>
    <div id="breadcrumbs">
      <a href="/" title="Home">Home</a> &raquo; Plans
    </div>
    <!-- Content Area -->
    <div id="content">
      <h2>Wifi Broadband Plans</h2>
      <table class="table" width="500px">
        <thead>
          <tr>
          <th width="100px"><center>Service Provider</center></th>
          <th width="100px"><center>Plan Name</center></th>
          <th width="100px"><center>Speed</center></th>
          <th width="100px"><center>Price/Month</center></th>
          <th width="100px"><center>Annual </center></th>
          </tr>
        </thead>
        <tbody>
          <tr>
          <td><center>Alliance</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          </tr>
          <tr class="odd">
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          </tr>
          <tr>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          </tr>
          <tr class="odd">
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          </tr>
          <tr>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          </tr>
          <tr class="odd">
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          <td><center>Option 1</center></td>
          </tr>
        </tbody>
      </table>
      <blockquote><p>And Many Other Column Variations Also Available...</p></blockquote>
    </div>
  </div>
  <!-- End Content Wrapper -->

{{ end }}