package controllers

import (
	"net/http"

	"github.com/astaxie/beego"
	"github.com/parikshitg/kalimpongbroadband/contents"
)

// ServicesController definition
type ServicesController struct {
	beego.Controller
}

// Get request handler
func (pc *ServicesController) Get() {
	var service = contents.Service{}
	pc.TplName = "page/services.tpl"
	pc.Data["URI"] = "/services"
	pc.Data["Title"] = "Our Services"

	if pc.Ctx.Request.URL.String() == "/admin/services" {
		if err := Authenticate(pc.Ctx); err != nil {
			pc.Redirect("/admin", http.StatusSeeOther)
		}
		pc.TplName = "admin/services.tpl"
	}

	services := service.ReadAll()
	pc.Data["Services"] = services
}
