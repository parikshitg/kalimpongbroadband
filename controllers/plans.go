package controllers

import (
	"github.com/urantiatech/beego"
)

type PlansController struct {
	beego.Controller
}

func (c *PlansController) Get() {
	c.TplName = "page/plans.tpl"
}
