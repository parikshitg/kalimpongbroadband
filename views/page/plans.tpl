{{ template "layout/layout.tpl" . }}


{{ define "title" }} Plans {{ end }}

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

      <h2>Wifi Broadband Plans</h2><br>

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

      <!--<div class="portfolio_one_col">
        <ul>
          <li>
            <div class="portfolio_thumb">
              <img src="/images/installation.png" width="582" height="200" alt="" class="pic" /><span class="hover_vid"></span>
            </div>
            <div class="portfolio_det">
              <h2>One time Installation charge: Rs 4500</h2>
                <div class="columns5">
                  <div class="column">
                    <h4>Includes:</h4>
                    <p>Router worth ₹1500 and one month plan price. Additional wire charges ₹12/meter and ₹25/meter may be applied as per the requirement.  </p>
                  </div>
                  <div class="clear"></div>
                </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
          </li>
        </ul>
      </div>       

      <div class="columns6">
        <div class="column">
          <h3>Ubiquity Power Beam</h3>
          <div class="gallery_item">
            <img src="/uploads/500.png" width="214" height="194" class="cover" alt="" />
          </div>
        </div>
        <div class="column" data-place="2">
          <h3>Ubiquitous Wireless Connection</h3>
          <table class="table" >
            <thead>
              <tr>
                <th>Device</th>
                <th>Installation Cost</th>
                <th>Description</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Light Beam</td> 
                <td>₹6000</td>
                <td>For use in remote areas.One time installation. Any of the listed above broadband plan can be used. </td>
              </tr>
              <tr>
                <td>Airgate</td> 
                <td>₹6000</td>
              </tr>
              <tr>
                <td>Power Beam</td> 
                <td>₹9000</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="clear"></div>
      </div>-->


    <div class="portfolio_three_col">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      <ul>
        <li>
          <div class="portfolio_thumb">
            <img src="" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">Wireless Router</a></h2>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <img src="" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span>          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">Internet Cable</a></h2>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <img src="" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">1 Month Rental</a></h2>
          </div>
        </li>
      </ul>
    </div>



    <div class="portfolio_three_col">
      <ul>
        <li>
          <div class="portfolio_thumb">
            <img src="" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">Light Beam</a></h2>
            <p>Installation Charges: Rs 6000</p>
            <div class="clear"></div>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <img src="" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">AirGate</a></h2>
            <p>Installation Charges: Rs 6000</p>
            <div class="clear"></div>
          </div>
        </li>
        <li>
          <div class="portfolio_thumb">
            <img src="" width="277" height="154" alt="" class="pic" /><span class="hover_vid"></span>
          </div>
          <div class="portfolio_det">
            <h2><a href="portfolio_single.html">Ubiquity PowerBeam</a></h2>
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