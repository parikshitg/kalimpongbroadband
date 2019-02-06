package controllers

import (
	"net/http"

	"github.com/urantiatech/beego"
)

type LogoutController struct {
	beego.Controller
}

func (this *LogoutController) Get() {
	// Set Empty Auth Cookie
	signkey := beego.AppConfig.String("signkey")
	this.SetSecureCookie(signkey, "AuthCookie", "")

	// Redirect to login page
	this.Redirect("/admin", http.StatusSeeOther)
}
