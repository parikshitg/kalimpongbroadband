{{ template "layout/layout.tpl" . }}

{{ define "contents" }}
<h1>Contact Us</h1>

<ul>
{{ with .Contact }}
	<li>Name: {{ .Name }}</li>
	<li>Email: {{ .Email }}</li>
	<li>Phone1: {{ .Phone1 }}</li>
	<li>Phone2: {{ .Phone2 }}</li>
	<li>Phone3: {{ .Name }}</li>
	<li>WhatsApp: {{ .WhatsApp }}</li>
	<li>Address1: {{ .Address1 }}</li>
	<li>Address2: {{ .Address2 }}</li>
	<li>City: {{ .City }}</li>
	<li>State: {{ .State }}</li>
	<li>Pincode: {{ .Pincode }}</li>
{{ end }}
</ul>
{{ end }}