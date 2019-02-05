package admin

import (
	"github.com/urantiatech/beego"
)

type PlansController struct {
	beego.Controller
}

func (c *PlansController) Get() {
	c.TplName = "admin/plans.tpl"
	c.Data["Title"] = "Broadband Plans"
}
