package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type ContactController struct {
	beego.Controller
}

func (this *ContactController) Get() {
	var page = &contents.Page{}
	this.TplName = "page/contact.tpl"
	this.Data["Title"] = "Contact Us"

	if this.Ctx.Request.URL.String() == "/admin/contact" {
		if err := Authenticate(this.Ctx); err != nil {
			this.Redirect("/admin", http.StatusSeeOther)
		}
		this.TplName = "admin/contact.tpl"
	}

	err := page.Read("contact")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Page"] = page
	this.Data["HtmlBody"] = template.HTML(page.Body)
}

func (this *ContactController) Post() {
	this.TplName = "admin/contact.tpl"
	this.Data["Title"] = "Contact Us"

	page := &contents.Page{
		Slug:  "contact",
		Title: this.Data["Title"].(string),
		Body:  this.GetString("body"),
	}

	err := page.Write("contact")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
	this.Data["Page"] = page
}
