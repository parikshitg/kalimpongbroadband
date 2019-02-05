package controllers

import (
	"github.com/urantiatech/beego"
)

type DashboardController struct {
	beego.Controller
}

func (this *DashboardController) Get() {
	this.TplName = "admin/dashboard.tpl"
	this.Data["Title"] = "Dashboard"
}
