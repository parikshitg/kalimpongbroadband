package routers

import (
	"git.urantiatech.com/commercial/kalimpongbroadband/controllers"
	"github.com/urantiatech/beego"
)

func init() {
	beego.Router("/", &controllers.HomeController{})
	beego.Router("/about", &controllers.AboutController{})
	beego.Router("/plans", &controllers.PlansController{})
	beego.Router("/services", &controllers.ServicesController{})
	beego.Router("/partners", &controllers.PartnersController{})
	beego.Router("/contact", &controllers.ContactController{})

	beego.ErrorController(&controllers.ErrorController{})

	beego.SetStaticPath("/css", "static/css")
	beego.SetStaticPath("/js", "static/js")
	beego.SetStaticPath("/img", "static/img")
}
