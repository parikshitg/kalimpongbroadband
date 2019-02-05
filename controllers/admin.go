package controllers

import (
	"github.com/urantiatech/beego"
)

type AdminController struct {
	beego.Controller
}

func (this *AdminController) Get() {
	this.TplName = "admin/dashboard.tpl"
	this.Data["Title"] = "dashboard"
}
