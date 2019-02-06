package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

// AboutController definition
type AboutController struct {
	beego.Controller
}

// Get request handler
func (ac *AboutController) Get() {
	var page = &contents.Page{}
	ac.TplName = "page/about.tpl"
	ac.Data["Title"] = "About Us"

	if ac.Ctx.Request.URL.String() == "/admin/about" {
		if err := Authenticate(ac.Ctx); err != nil {
			ac.Redirect("/admin", http.StatusSeeOther)
		}
		ac.TplName = "admin/about.tpl"
	}

	err := page.Read("about")
	if err != nil {
		ac.Data["Error"] = err.Error()
		return
	}
	ac.Data["Page"] = page
	ac.Data["HtmlBody"] = template.HTML(page.Body)
}

// Post request handler
func (ac *AboutController) Post() {
	ac.TplName = "admin/about.tpl"
	ac.Data["Title"] = "About Us"

	page := &contents.Page{
		Slug:  "about",
		Title: ac.Data["Title"].(string),
		Body:  ac.GetString("body"),
	}

	err := page.Write(page.Slug)
	if err != nil {
		ac.Data["Error"] = err.Error()
	}
	ac.Data["Page"] = page
}
