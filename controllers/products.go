package controllers

import (
	"html/template"
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
	var page = &contents.Page{}
	pc.TplName = "page/products.tpl"
	pc.Data["Title"] = "Our Products"

	if pc.Ctx.Request.URL.String() == "/admin/products" {
		if err := Authenticate(pc.Ctx); err != nil {
			pc.Redirect("/admin", http.StatusSeeOther)
		}
		pc.TplName = "admin/products.tpl"
	}

	err := page.Read("products")
	if err != nil {
		pc.Data["Error"] = err.Error()
		return
	}
	pc.Data["Page"] = page
	pc.Data["HtmlBody"] = template.HTML(page.Body)
}

// Post request handler
func (pc *ProductsController) Post() {
	pc.TplName = "admin/products.tpl"
	pc.Data["Title"] = "Our Products"

	page := &contents.Page{
		Slug:  "products",
		Title: pc.Data["Title"].(string),
		Body:  pc.GetString("body"),
	}

	err := page.Write("products")
	if err != nil {
		pc.Data["Error"] = err.Error()
	}
	pc.Data["Page"] = page
}
