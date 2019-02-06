package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type ServicesController struct {
	beego.Controller
}

func (this *ServicesController) Get() {
	var page = &contents.Page{}
	this.TplName = "page/services.tpl"
	this.Data["Title"] = "Our Services"

	if this.Ctx.Request.URL.String() == "/admin/services" {
		if err := Authenticate(this.Ctx); err != nil {
			this.Redirect("/admin", http.StatusSeeOther)
		}
		this.TplName = "admin/services.tpl"
	}

	err := page.Read("services")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Page"] = page
	this.Data["HtmlBody"] = template.HTML(page.Body)
}

func (this *ServicesController) Post() {
	this.TplName = "admin/services.tpl"
	this.Data["Title"] = "Our Services"

	page := &contents.Page{
		Slug:  "services",
		Title: this.Data["Title"].(string),
		Body:  this.GetString("body"),
	}

	err := page.Write("services")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
	this.Data["Page"] = page
}
