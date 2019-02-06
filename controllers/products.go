package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

type ProductsController struct {
	beego.Controller
}

func (this *ProductsController) Get() {
	var page = &contents.Page{}
	this.TplName = "page/products.tpl"
	this.Data["Title"] = "Our Products"

	if this.Ctx.Request.URL.String() == "/admin/products" {
		if err := Authenticate(this.Ctx); err != nil {
			this.Redirect("/admin", http.StatusSeeOther)
		}
		this.TplName = "admin/products.tpl"
	}

	err := page.Read("products")
	if err != nil {
		this.Data["Error"] = err.Error()
		return
	}
	this.Data["Page"] = page
	this.Data["HtmlBody"] = template.HTML(page.Body)
}

func (this *ProductsController) Post() {
	this.TplName = "admin/products.tpl"
	this.Data["Title"] = "Our Products"

	page := &contents.Page{
		Slug:  "products",
		Title: this.Data["Title"].(string),
		Body:  this.GetString("body"),
	}

	err := page.Write("products")
	if err != nil {
		this.Data["Error"] = err.Error()
	}
	this.Data["Page"] = page
}
