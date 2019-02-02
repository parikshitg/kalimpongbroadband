package controllers

import (
	"github.com/urantiatech/beego"
)

type ContactController struct {
	beego.Controller
}

func (c *ContactController) Get() {
	c.TplName = "page/contact.tpl"
}
