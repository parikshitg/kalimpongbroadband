package controllers

import (
	"net/http"

	"github.com/urantiatech/beego"
)

type SettingsController struct {
	beego.Controller
}

func (this *SettingsController) Get() {
	if err := Authenticate(this.Ctx); err != nil {
		this.Redirect("/admin", http.StatusSeeOther)
	}
	this.TplName = "admin/settings.tpl"
	this.Data["Title"] = "Settings"

}
