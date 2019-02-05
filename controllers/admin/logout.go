package admin

import (
	"github.com/urantiatech/beego"
)

type LogoutController struct {
	beego.Controller
}

func (c *LogoutController) Get() {
	c.TplName = "admin/dashboard.tpl"
	c.Data["Title"] = "Dashboard"
}
