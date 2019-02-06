package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

// PartnersController definition
type PartnersController struct {
	beego.Controller
}

// Get request handler
func (pc *PartnersController) Get() {
	var page = &contents.Page{}
	pc.TplName = "page/partners.tpl"
	pc.Data["Title"] = "Our Partners"

	if pc.Ctx.Request.URL.String() == "/admin/partners" {
		if err := Authenticate(pc.Ctx); err != nil {
			pc.Redirect("/admin", http.StatusSeeOther)
		}
		pc.TplName = "admin/partners.tpl"
	}

	err := page.Read("partners")
	if err != nil {
		pc.Data["Error"] = err.Error()
		return
	}
	pc.Data["Page"] = page
	pc.Data["HtmlBody"] = template.HTML(page.Body)
}

// Post request handler
func (pc *PartnersController) Post() {
	pc.TplName = "admin/partners.tpl"
	pc.Data["Title"] = "Our Partners"

	page := &contents.Page{
		Slug:  "partners",
		Title: pc.Data["Title"].(string),
		Body:  pc.GetString("body"),
	}

	err := page.Write("partners")
	if err != nil {
		pc.Data["Error"] = err.Error()
	}
	pc.Data["Page"] = page
}
