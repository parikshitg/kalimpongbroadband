package routers

import (
	"git.urantiatech.com/commercial/kalimpongbroadband/controllers"
	"git.urantiatech.com/commercial/kalimpongbroadband/controllers/admin"
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
	beego.Router("/admin", &admin.AdminController{})
	beego.Router("/admin/dashboard", &admin.DashboardController{})
	beego.Router("/admin/about", &admin.AboutController{})
	beego.Router("/admin/services", &admin.ServicesController{})
	beego.Router("/admin/plans", &admin.PlansController{})
	beego.Router("/admin/partners", &admin.PartnersController{})
	beego.Router("/admin/contact", &admin.ContactController{})
	beego.Router("/admin/settings", &admin.SettingsController{})
	beego.Router("/admin/logout", &admin.LogoutController{})

	// Admin static files
	beego.SetStaticPath("/badmin", "static/badmin")

	beego.ErrorController(&controllers.ErrorController{})

}
