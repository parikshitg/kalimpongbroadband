package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type PartnersController struct {
	beego.Controller
}

func (this *PartnersController) Get() {
	var page = &contents.Page{}
	this.TplName = "page/partners.tpl"
	this.Data["URI"] = "/partners"
	this.Data["Title"] = "Our Partners"

	if this.Ctx.Request.URL.String() == "/admin/partners" {
		if err := Authenticate(this.Ctx); err != nil {
			this.Redirect("/admin", http.StatusSeeOther)
		}
		this.TplName = "admin/partners.tpl"
	}

	err := page.Read("partners")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Page"] = page
	this.Data["HtmlBody"] = template.HTML(page.Body)
}

func (this *PartnersController) Post() {
	this.TplName = "admin/partners.tpl"
	this.Data["Title"] = "Our Partners"

	page := &contents.Page{
		Slug:  "partners",
		Title: this.Data["Title"].(string),
		Body:  this.GetString("body"),
	}

	err := page.Write("partners")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
	this.Data["Page"] = page
}
