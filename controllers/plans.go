package controllers

import (
	"html/template"
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

// PlansController definition
type PlansController struct {
	beego.Controller
}

// Get request handler
func (pc *PlansController) Get() {
	var page = &contents.Page{}
	pc.TplName = "page/plans.tpl"
	pc.Data["Title"] = "Broadband Plans"

	if pc.Ctx.Request.URL.String() == "/admin/plans" {
		if err := Authenticate(pc.Ctx); err != nil {
			pc.Redirect("/admin", http.StatusSeeOther)
		}
		pc.TplName = "admin/plans.tpl"
	}

	err := page.Read("plans")
	if err != nil {
		pc.Data["Error"] = err.Error()
		return
	}
	pc.Data["Page"] = page
	pc.Data["HtmlBody"] = template.HTML(page.Body)
}

// Post request handler
func (pc *PlansController) Post() {
	pc.TplName = "admin/plans.tpl"
	pc.Data["Title"] = "Broadband Plans"

	page := &contents.Page{
		Slug:  "plans",
		Title: pc.Data["Title"].(string),
		Body:  pc.GetString("body"),
	}

	err := page.Write("plans")
	if err != nil {
		pc.Data["Error"] = err.Error()
	}
	pc.Data["Page"] = page
}
