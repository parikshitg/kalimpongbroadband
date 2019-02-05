package admin

import (
	"github.com/urantiatech/beego"
)

type SettingsController struct {
	beego.Controller
}

func (c *SettingsController) Get() {
	c.TplName = "admin/settings.tpl"
	c.Data["Title"] = "Settings"
}
