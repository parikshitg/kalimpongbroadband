package controllers

import (
	"net/http"

	"github.com/urantiatech/beego"
)

// SettingsController definition
type SettingsController struct {
	beego.Controller
}

// Get request handler
func (sc *SettingsController) Get() {
	if err := Authenticate(sc.Ctx); err != nil {
		sc.Redirect("/admin", http.StatusSeeOther)
	}
	sc.TplName = "admin/settings.tpl"
	sc.Data["Title"] = "Settings"

}
