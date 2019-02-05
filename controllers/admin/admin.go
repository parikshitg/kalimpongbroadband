package admin

import (
	"github.com/urantiatech/beego"
)

type AdminController struct {
	beego.Controller
}

func (c *AdminController) Get() {
	c.TplName = "admin/dashboard.tpl"
	c.Data["Title"] = "dashboard"
}
