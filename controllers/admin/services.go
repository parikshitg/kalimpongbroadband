package admin

import (
	"github.com/urantiatech/beego"
)

type ServicesController struct {
	beego.Controller
}

func (c *ServicesController) Get() {
	c.TplName = "admin/services.tpl"
	c.Data["Title"] = "Our Services"
}
