package controllers

import (
	"log"
	"net/http"
	"strings"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"git.urantiatech.com/pkg/slug"
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
	pc.Data["Title"] = "Our Products"

	if strings.HasPrefix(pc.Ctx.Request.URL.String(), "/admin") {
		log.Println("admin requrest")
		if err := Authenticate(pc.Ctx); err != nil {
			pc.Redirect("/admin", http.StatusSeeOther)
		}

		switch pc.GetString("op") {
		case "edit":
			product.Slug = pc.GetString("slug")
			pc.Data["Error"] = product.Read()
			pc.Data["Product"] = product
			pc.TplName = "admin/product.tpl"
			return

		case "create":
			pc.TplName = "admin/product.tpl"
			return

		case "remove":
			product.Slug = pc.GetString("slug")
			product.Delete()
		}
		pc.TplName = "admin/products.tpl"
	}

	products := product.ReadAll()
	pc.Data["Products"] = products
}

// Post request handler
func (pc *ProductsController) Post() {
	pc.TplName = "admin/products.tpl"
	pc.Data["Title"] = "Our Products"

	product := &contents.Product{
		Slug:        pc.GetString("slug"),
		Name:        pc.GetString("name"),
		Description: pc.GetString("description"),
	}

	if product.Slug == "" {
		product.Slug = slug.StringToSlug(product.Name)
	}

	err := product.Write()
	if err != nil {
		pc.Data["Error"] = err.Error()
	}
	pc.Data["Product"] = product
	products := product.ReadAll()
	pc.Data["Products"] = products
}
