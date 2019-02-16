package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

// ServicesController definition
type ServicesController struct {
	beego.Controller
}

// Get request handler
func (sc *ServicesController) Get() {
	var page = &contents.Page{}
	sc.TplName = "page/services.tpl"
	sc.Data["URI"] = "/services"
	sc.Data["Title"] = "Our Services"

	if sc.Ctx.Request.URL.String() == "/admin/services" {
		if err := Authenticate(sc.Ctx); err != nil {
			sc.Redirect("/admin", http.StatusSeeOther)
		}
		sc.TplName = "admin/services.tpl"
	}

	err := page.Read("services")
	if err != nil {
		sc.Data["Error"] = err.Error()
		return
	}
	sc.Data["Page"] = page
	sc.Data["HtmlBody"] = template.HTML(page.Body)
}

// Post request handler
func (sc *ServicesController) Post() {
	sc.TplName = "admin/services.tpl"
	sc.Data["Title"] = "Our Services"

	page := &contents.Page{
		Slug:  "services",
		Title: sc.Data["Title"].(string),
		Body:  sc.GetString("body"),
	}

	err := page.Write("services")
	if err != nil {
		sc.Data["Error"] = err.Error()
	}
	sc.Data["Page"] = page
}
