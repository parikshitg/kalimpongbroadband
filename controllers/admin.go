package controllers

import (
	"github.com/urantiatech/beego"
)

type AdminController struct {
	beego.Controller
}

func (c *AdminController) Get() {
	c.TplName = "admin/page/login.tpl"
}
