package admin

import (
	"github.com/urantiatech/beego"
)

type DashboardController struct {
	beego.Controller
}

func (c *DashboardController) Get() {
	c.TplName = "admin/dashboard.tpl"
	c.Data["Title"] = "Dashboard"
}
