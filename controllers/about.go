package controllers

import (
	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type AboutController struct {
	beego.Controller
}

func (this *AboutController) Get() {
	var page = &contents.Page{}

	this.TplName = "page/about.tpl"
	this.Data["Title"] = "Settings"

	err := page.Read("about")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Page"] = page
}

func (this *AboutController) Post() {
	this.TplName = "admin/about.tpl"

	page := &contents.Page{
		Slug:  "about",
		Title: "About Us",
		Body:  this.GetString("body"),
	}

	err := page.Write("about")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
}
