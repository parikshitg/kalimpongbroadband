package controllers

import (
	"github.com/urantiatech/beego"
)

type ServicesController struct {
	beego.Controller
}

func (c *ServicesController) Get() {
	c.TplName = "page/services.tpl"
}
