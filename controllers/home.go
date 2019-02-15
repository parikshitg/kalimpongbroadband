package controllers

import (
	"github.com/urantiatech/beego"
)

// HomeController definition
type HomeController struct {
	beego.Controller
}

// Get request handler
func (hc *HomeController) Get() {
	hc.TplName = "page/home.tpl"
	hc.Data["URI"] = "/"
}
