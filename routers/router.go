package routers

import (
	"git.urantiatech.com/commercial/kalimpongbroadband/controllers"
	"github.com/urantiatech/beego"
)

func init() {
	// Normal routes
	beego.Router("/", &controllers.HomeController{})
	beego.Router("/about", &controllers.AboutController{})
	beego.Router("/services", &controllers.ServicesController{})
	beego.Router("/plans", &controllers.PlansController{})
	beego.Router("/partners", &controllers.PartnersController{})
	beego.Router("/contact", &controllers.ContactController{})

	// Static files
	beego.SetStaticPath("/css", "static/css")
	beego.SetStaticPath("/js", "static/js")
	beego.SetStaticPath("/img", "static/img")
	beego.SetStaticPath("/fonts", "static/fonts")

	// Admin routes
	beego.Router("/admin", &controllers.AdminController{})
	beego.Router("/admin/dashboard", &controllers.DashboardController{})
	beego.Router("/admin/about", &controllers.AboutController{})
	beego.Router("/admin/services", &controllers.ServicesController{})
	beego.Router("/admin/plans", &controllers.PlansController{})
	beego.Router("/admin/partners", &controllers.PartnersController{})
	beego.Router("/admin/contact", &controllers.ContactController{})
	beego.Router("/admin/settings", &controllers.SettingsController{})
	beego.Router("/admin/logout", &controllers.LogoutController{})

	// Admin static files
	beego.SetStaticPath("/badmin", "static/badmin")

	beego.ErrorController(&controllers.ErrorController{})

}
