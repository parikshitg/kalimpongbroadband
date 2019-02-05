package admin

import (
	"github.com/urantiatech/beego"
)

type ContactController struct {
	beego.Controller
}

func (c *ContactController) Get() {
	c.TplName = "admin/contact.tpl"
	c.Data["Title"] = "Contact Us"
}
