package controllers

import (
	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type ServicesController struct {
	beego.Controller
}

func (this *ServicesController) Get() {
	var page = &contents.Service{}
	this.TplName = "page/services.tpl"

	err := page.Read("services")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Service"] = page
}

func (this *ServicesController) Post() {
	this.TplName = "admin/services.tpl"

	page := &contents.Service{
		Slug:  "services",
		Title: "Our Services",
		Body:  this.GetString("body"),
	}

	err := page.Write("services")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
}
