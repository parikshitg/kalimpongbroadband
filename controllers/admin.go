package controllers

import (
	"errors"

	"github.com/urantiatech/beego"
	"github.com/urantiatech/beego/context"
)

type AdminController struct {
	beego.Controller
}

const authToken = "some-random-string"

func (this *AdminController) Get() {
	if err := Authenticate(this.Ctx); err != nil {
		this.TplName = "admin/login.tpl"
		this.Data["Title"] = "Admin Login"
		this.Data["Error"] = err.Error()
		return
	}

	this.TplName = "admin/dashboard.tpl"
	this.Data["Title"] = "Dashboard"
}

func (this *AdminController) Post() {
	username := this.GetString("username")
	password := this.GetString("password")

	if username != beego.AppConfig.String("adminuser") ||
		password != beego.AppConfig.String("adminpass") {
		this.TplName = "admin/login.tpl"
		this.Data["Title"] = "Admin Login"
		this.Data["Error"] = "Invalid username or password"
		return
	}

	this.TplName = "admin/dashboard.tpl"
	this.Data["Title"] = "Dashboard"

	// Set Auth Cookie
	signkey := beego.AppConfig.String("signkey")
	this.SetSecureCookie(signkey, "AuthCookie", authToken)
}

func Authenticate(c *context.Context) error {
	// Check Auth Cookie
	signkey := beego.AppConfig.String("signkey")
	val, found := c.GetSecureCookie(signkey, "AuthCookie")
	if !found || val != authToken {
		return errors.New("Please login to continue.")
	}
	return nil
}
