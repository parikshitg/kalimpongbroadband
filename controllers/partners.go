package controllers

import (
	"github.com/urantiatech/beego"
)

type PartnersController struct {
	beego.Controller
}

func (c *PartnersController) Get() {
	c.TplName = "page/partners.tpl"
}
