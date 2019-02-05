package admin

import (
	"github.com/urantiatech/beego"
)

type AboutController struct {
	beego.Controller
}

func (c *AboutController) Get() {
	c.TplName = "admin/about.tpl"
	c.Data["Title"] = "About Us"
}
