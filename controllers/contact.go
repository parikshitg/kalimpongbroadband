package controllers

import (
	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type ContactController struct {
	beego.Controller
}

func (this *ContactController) Get() {
	var contact = &contents.Contact{}
	this.TplName = "contact/contact.tpl"

	err := contact.Read("contact")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Contact"] = contact
}

func (this *ContactController) Post() {
	this.TplName = "admin/contact.tpl"

	contact := &contents.Contact{
		Slug: "contact",
	}

	err := contact.Store("contact")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
}
