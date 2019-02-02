package controllers

import (
	"github.com/urantiatech/beego"
)

type HomeController struct {
	beego.Controller
}

func (c *HomeController) Get() {
	c.TplName = "page/home.tpl"
}
