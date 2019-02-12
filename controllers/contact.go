package controllers

import (
	"net/http"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	"github.com/urantiatech/beego"
)

// ContactController definition
type ContactController struct {
	beego.Controller
}

// Get request handler
func (cc *ContactController) Get() {
	var contact = &contents.Contact{}
	cc.TplName = "page/contact.tpl"
	cc.Data["Title"] = "Contact Us"

	if cc.Ctx.Request.URL.String() == "/admin/contact" {
		if err := Authenticate(cc.Ctx); err != nil {
			cc.Redirect("/admin", http.StatusSeeOther)
		}
		cc.TplName = "admin/contact.tpl"
	}

	err := contact.Read("contact")
	if err != nil {
		cc.Data["Error"] = err.Error()
		return
	}
	cc.Data["Contact"] = contact
}

// Post request handler
func (cc *ContactController) Post() {
	cc.TplName = "admin/contact.tpl"
	cc.Data["Title"] = "Contact Us"

	contact := &contents.Contact{
		Slug:     "contact",
		Name:     cc.GetString("name"),
		Email:    cc.GetString("email"),
		Phone1:   cc.GetString("phone1"),
		Phone2:   cc.GetString("phone2"),
		Phone3:   cc.GetString("phone3"),
		WhatsApp: cc.GetString("whatsapp"),
		Address1: cc.GetString("address1"),
		Address2: cc.GetString("address2"),
		City:     cc.GetString("city"),
		State:    cc.GetString("state"),
		Pincode:  cc.GetString("pincode"),
	}

	err := contact.Write(contact.Slug)
	if err != nil {
		cc.Data["Error"] = err.Error()
	}
	cc.Data["Contact"] = contact
}
