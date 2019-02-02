package controllers

import (
	"github.com/urantiatech/beego"
)

type AboutController struct {
	beego.Controller
}

func (c *AboutController) Get() {
	c.TplName = "page/about.tpl"
}
