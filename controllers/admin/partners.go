package admin

import (
	"github.com/urantiatech/beego"
)

type PartnersController struct {
	beego.Controller
}

func (c *PartnersController) Get() {
	c.TplName = "admin/partners.tpl"
	c.Data["Title"] = "Business Partners"
}
