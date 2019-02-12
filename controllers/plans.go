package controllers

import (
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"git.urantiatech.com/pkg/slug"
	"github.com/urantiatech/beego"
)

// PlansController definition
type PlansController struct {
	beego.Controller
}

// Get request handler
func (pc *PlansController) Get() {
	var plan = &contents.Plan{}
	pc.TplName = "page/plans.tpl"
	pc.Data["Title"] = "Broadband Plans"

	if pc.Ctx.Request.URL.String() == "/admin/plans" {
		if err := Authenticate(pc.Ctx); err != nil {
			pc.Redirect("/admin", http.StatusSeeOther)
		}
		pc.TplName = "admin/plans.tpl"
	}

	pc.Data["Plans"] = plan.ReadAll()
}

// Post request handler
func (pc *PlansController) Post() {
	var plan *contents.Plan
	pc.TplName = "admin/plans.tpl"
	pc.Data["Title"] = "Broadband Plans"

	plan = &contents.Plan{
		Slug:          pc.GetString("slug"),
		Name:          pc.GetString("name"),
		Provider:      pc.GetString("provider"),
		Speed:         pc.GetString("speed"),
		MonthlyRental: pc.GetString("monthly"),
		AnnualRental:  pc.GetString("annual"),
	}
	if plan.Slug == "" {
		plan.Slug = slug.StringToSlug(pc.GetString("name"))
	}

	if plan.IsEmpty() {
		switch pc.GetString("op") {
		case "update":
			if err := plan.Delete(); err != nil {
				pc.Data["Error"] = err.Error()
			}
		case "create":
			// Do Nothing
		}
		pc.Data["Plans"] = plan.ReadAll()
		return
	}

	if err := plan.Write(); err != nil {
		pc.Data["Error"] = err.Error()
	}

	pc.Data["Plans"] = plan.ReadAll()
}
