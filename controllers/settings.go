package controllers

import (
	"github.com/urantiatech/beego"
)

type SettingsController struct {
	beego.Controller
}

func (this *SettingsController) Get() {
	this.TplName = "admin/settings.tpl"
	this.Data["Title"] = "Settings"
}
