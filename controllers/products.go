package controllers

import (
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

// ProductsController definition
type ProductsController struct {
	beego.Controller
}

// Get request handler
func (pc *ProductsController) Get() {
	var product = contents.Product{}
	pc.TplName = "page/products.tpl"
	pc.Data["URI"] = "/products"
	pc.Data["Title"] = "Our Products"

	if pc.Ctx.Request.URL.String() == "/admin/products" {
		if err := Authenticate(pc.Ctx); err != nil {
			pc.Redirect("/admin", http.StatusSeeOther)
		}
		pc.TplName = "admin/products.tpl"
	}

	products := product.ReadAll()
	pc.Data["Products"] = products
}
