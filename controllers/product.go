package controllers

import (
	"io"
	"net/http"
	"os"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"git.urantiatech.com/pkg/slug"
	"github.com/urantiatech/beego"
)

// ProductController definition
type ProductController struct {
	beego.Controller
}

// Get request handler
func (pc *ProductController) Get() {
	var product = contents.Product{}
	pc.TplName = "page/product.tpl"

	switch pc.GetString("op") {
	case "edit":
		pc.Data["Title"] = "Edit Product"
		product.Slug = pc.GetString("slug")
		pc.Data["Error"] = product.Read()
		pc.Data["Product"] = product
		pc.TplName = "admin/product.tpl"
		return

	case "create":
		pc.Data["Title"] = "Add New Product"
		pc.TplName = "admin/product.tpl"
		return

	case "remove":
		product.Slug = pc.GetString("slug")
		product.Delete()
	}

	pc.TplName = "admin/products.tpl"
	pc.Data["Title"] = "Our Products"
	products := product.ReadAll()
	pc.Data["Products"] = products
}

// Post request handler
func (pc *ProductController) Post() {
	pc.TplName = "admin/product.tpl"

	product := &contents.Product{
		Slug:        pc.GetString("slug"),
		Name:        pc.GetString("name"),
		Description: pc.GetString("description"),
		Image:       pc.GetString("oldimage"),
	}
	pc.Data["Title"] = pc.GetString("title")
	pc.Data["Product"] = product

	if product.Slug == "" {
		product.Slug = slug.StringToSlug(product.Name)
	}

	file, header, err := pc.GetFile("image")
	if err == nil {
		//create destination file making sure the path is writeable.
		dst, err := os.Create("uploads/" + header.Filename)
		defer dst.Close()
		if err != nil {
			pc.Data["Error"] = "Error:" + err.Error()
			return
		}
		//copy the uploaded file to the destination file
		if _, err := io.Copy(dst, file); err != nil {
			pc.Data["Error"] = "Can't copy file: " + dst.Name()
			return
		}
		product.Image = header.Filename
	}

	err = product.Write()
	if err != nil {
		pc.Data["Error"] = err.Error()
		return
	}

	// Show all products
	pc.Redirect("/admin/products", http.StatusSeeOther)
}
