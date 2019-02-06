package controllers

import (
	"errors"

	"github.com/urantiatech/beego"
	"github.com/urantiatech/beego/context"
)

// AdminController definition
type AdminController struct {
	beego.Controller
}

const authToken = "some-random-string"

// Get request handler
func (ac *AdminController) Get() {
	if err := Authenticate(ac.Ctx); err != nil {
		ac.TplName = "admin/login.tpl"
		ac.Data["Title"] = "Admin Login"
		ac.Data["Error"] = err.Error()
		return
	}

	ac.TplName = "admin/dashboard.tpl"
	ac.Data["Title"] = "Dashboard"
}

// Post request handler
func (ac *AdminController) Post() {
	username := ac.GetString("username")
	password := ac.GetString("password")

	if username != beego.AppConfig.String("adminuser") ||
		password != beego.AppConfig.String("adminpass") {
		ac.TplName = "admin/login.tpl"
		ac.Data["Title"] = "Admin Login"
		ac.Data["Error"] = "Invalid username or password"
		return
	}

	ac.TplName = "admin/dashboard.tpl"
	ac.Data["Title"] = "Dashboard"

	// Set Auth Cookie
	signkey := beego.AppConfig.String("signkey")
	ac.SetSecureCookie(signkey, "AuthCookie", authToken)
}

// Authenticate looks for AuthCookie
func Authenticate(c *context.Context) error {
	// Check Auth Cookie
	signkey := beego.AppConfig.String("signkey")
	val, found := c.GetSecureCookie(signkey, "AuthCookie")
	if !found || val != authToken {
		return errors.New("Please login to continue")
	}
	return nil
}
