package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type AboutController struct {
	beego.Controller
}

func (this *AboutController) Get() {
	var page = &contents.Page{}
	this.TplName = "page/about.tpl"
	this.Data["Title"] = "About Us"

	if this.Ctx.Request.URL.String() == "/admin/about" {
		if err := Authenticate(this.Ctx); err != nil {
			this.Redirect("/admin", http.StatusSeeOther)
		}
		this.TplName = "admin/about.tpl"
	}

	err := page.Read("about")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Page"] = page
	this.Data["HtmlBody"] = template.HTML(page.Body)
}

func (this *AboutController) Post() {
	this.TplName = "admin/about.tpl"
	this.Data["Title"] = "About Us"

	page := &contents.Page{
		Slug:  "about",
		Title: this.Data["Title"].(string),
		Body:  this.GetString("body"),
	}

	err := page.Write("about")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
	this.Data["Page"] = page
}
