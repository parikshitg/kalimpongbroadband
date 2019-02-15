package controllers

import (
	"github.com/urantiatech/beego"
)

type HomeController struct {
	beego.Controller
}

func (hc *HomeController) Get() {
	hc.TplName = "page/home.tpl"
	hc.Data["URI"] = "/"
}
