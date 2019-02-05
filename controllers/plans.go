package controllers

import (
	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type PlansController struct {
	beego.Controller
}

func (this *PlansController) Get() {
	var page = &contents.Plan{}
	this.TplName = "page/plans.tpl"

	err := page.Read("plans")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Plan"] = page
}

func (this *PlansController) Post() {
	this.TplName = "admin/plans.tpl"

	page := &contents.Plan{
		Slug:  "plans",
		Title: "Broadband Plans",
	}

	err := page.Write("plans")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
}
