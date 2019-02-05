package controllers

import (
	"github.com/urantiatech/beego"
)

type LogoutController struct {
	beego.Controller
}

func (this *LogoutController) Get() {
	this.TplName = "admin/dashboard.tpl"
	this.Data["Title"] = "Dashboard"
}
