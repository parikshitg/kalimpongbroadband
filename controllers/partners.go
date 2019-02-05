package controllers

import (
	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type PartnersController struct {
	beego.Controller
}

func (this *PartnersController) Get() {
	var page = &contents.Page{}
	this.TplName = "page/partners.tpl"

	err := page.Read("partners")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Page"] = page
}

func (this *PartnersController) Post() {
	this.TplName = "admin/partners.tpl"

	page := &contents.Page{
		Slug:  "partners",
		Title: "Our Partners",
		Body:  this.GetString("body"),
	}

	err := page.Write("partners")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
}
