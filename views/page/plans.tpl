{{ template "layout/layout.tpl" . }}


{{ define "title" }} Plans {{ end }}

{{ define "contents" }}
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
      <table class="table" width="500px">
        <thead>
            <tr>
            <th width="100px"><center>Plan Name</center></th>
            <th width="100px"><center>Service Provider</center></th>
            <th width="100px"><center>Speed</center></th>
            <th width="100px"><center>Price/Month</center></th>
            <th width="100px"><center>Annual Rental</center></th>
            </tr>
        </thead>
        <tbody>
          {{ range $p:= .Plans }}
          <tr height="75px">
            <td><center>{{ $p.Name }}</center></td>
            <td><center>{{ $p.Provider }}</center></td>
            <td><center>{{ $p.Speed }}</center></td>
            <td><center>₹{{ $p.MonthlyRental }}</center></td>
            <td><center>₹{{ $p.AnnualRental }}</center></td>
          </tr>
          {{ end }}
        </tbody>
      </table>

<br>
<h1>Installation</h1>
<p>One time installation charge includes, one router worth Rs 1500 + 100 meter cable + 1 month rental. Addtional charges Rs 12/meter for Fiber Optic cable and Rs 25/meter for CAT5 cable may be applied depending on the length.</p>

  <br>

    <div class="portfolio_two_col">
      <ul>
        <li>
          <div class="portfolio_thumb">
            <h2>Home Broadband Internet</h2>
            <img src="/images/broadband-install.png" width="440" height="256" alt="" class="pic" />
          </div>
          <div class="portfolio_det">
            <p>Installation Charges: Rs 4500</p>
            <div class="clear"></div>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <h2>Ubiquiti Light Beam</h2>
            <img src="/images/lightbeam-install.png" width="440" height="256" alt="" class="pic" />
          </div>
          <div class="portfolio_det">
            <p>Installation Charges: Rs 6000</p>
            <div class="clear"></div>
          </div>
        </li>
      </ul>
    </div>



    <div class="portfolio_two_col">
      <ul>
        <li>
          <div class="portfolio_thumb">
            <h2>Ubiquiti AirGrid</h2>
            <img src="/images/airgrid-install.png" width="440" height="256" alt="" class="pic" />
          </div>
          <div class="portfolio_det">
            <p>Installation Charges: Rs 6000</p>
            <div class="clear"></div>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <h2>Ubiquiti PowerBeam</h2>
            <img src="/images/powerbeam-install.png" width="440" height="256" alt="" class="pic" />
          </div>
          <div class="portfolio_det">
            <p>Installation Charges: Rs 9000</p>
            <div class="clear"></div>
          </div>
        </li>
      </ul>
    </div>

    </div>
  </div>
  <!-- End Content Wrapper -->

{{ end }}