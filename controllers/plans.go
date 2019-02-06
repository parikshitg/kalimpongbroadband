package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type PlansController struct {
	beego.Controller
}

func (this *PlansController) Get() {
	var page = &contents.Page{}
	this.TplName = "page/plans.tpl"
	this.Data["Title"] = "Broadband Plans"

	if this.Ctx.Request.URL.String() == "/admin/plans" {
		if err := Authenticate(this.Ctx); err != nil {
			this.Redirect("/admin", http.StatusSeeOther)
		}
		this.TplName = "admin/plans.tpl"
	}

	err := page.Read("plans")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Page"] = page
	this.Data["HtmlBody"] = template.HTML(page.Body)
}

func (this *PlansController) Post() {
	this.TplName = "admin/plans.tpl"
	this.Data["Title"] = "Broadband Plans"

	page := &contents.Page{
		Slug:  "plans",
		Title: this.Data["Title"].(string),
		Body:  this.GetString("body"),
	}

	err := page.Write("plans")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
	this.Data["Page"] = page
}
