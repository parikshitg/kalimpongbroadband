package controllers

import (
	"github.com/urantiatech/beego"
)

// ErrorController handles 404, 401, 403, 500, 503 errors
type ErrorController struct {
	beego.Controller
}

// Error404 handles 404
func (this *ErrorController) Error404() {
	this.Data["content"] = "page not found"
	this.TplName = "page/404.tpl"
}

// Error500 handles 500
func (this *ErrorController) Error500() {
	this.Data["content"] = "internal server error"
	this.TplName = "page/500.tpl"
}
