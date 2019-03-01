package controllers

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"strings"

	"git.urantiatech.com/commercial/kalimpongbroadband/contents"
	mailapi "git.urantiatech.com/mail/mail/api"
	"github.com/gorilla/csrf"
	"github.com/urantiatech/beego"
)

// ContactController definition
type ContactController struct {
	beego.Controller
}

// Get request handler
func (cc *ContactController) Get() {
	cc.TplName = "page/contact.tpl"
	cc.Data["URI"] = "/contact"
	cc.Data["Title"] = "Contact Us"
	cc.Data["CSRFToken"] = csrf.Token(cc.Ctx.Request)

	var contact = &contents.Contact{}
	err := contact.Read("contact")
	if err != nil {
		cc.Data["Error"] = err.Error()
		return
	}
	cc.Data["Contact"] = contact

}

// Post request handler
func (cc *ContactController) Post() {
	cc.TplName = "page/contact.tpl"
	cc.Data["Title"] = "Contact Us"
	cc.Data["URI"] = "/contact"

	// Contact form submission
	name := cc.GetString("name")
	email := cc.GetString("email")
	phone := cc.GetString("phone")
	subject := fmt.Sprintf("[Contact Form - %s] %s - %s", cc.GetString("subject"), name, phone)
	body := cc.GetString("body")

	mail := mailapi.Mail{
		From:    "Rajesh Jain <rajesh@kalimpongbroadband.com>",
		To:      "Rajesh Jain <rajesh@kalimpongbroadband.com>",
		Cc:      "\"Sangeet Kumar\" <sk@urantiatech.com>, \"Parikshit Gothwal\" <parikshit@urantiatech.com>",
		ReplyTo: fmt.Sprintf("%s <%s>", name, email),
		Subject: subject,
		HTML:    strings.Replace(body, "\n", "<br/>", -1),
	}

	err := mailapi.SendMail(&mail, os.Getenv("MAIL_SVC"))
	if err != nil {
		log.Println(err)
		cc.Data["Error"] = "Couldn't send your messgae due to some technical problem."
	} else {
		cc.Data["Flash"] = "Your message has been sent."
	}

	var contact = &contents.Contact{}
	err = contact.Read("contact")
	if err != nil {
		cc.Data["Error"] = err.Error()
		return
	}
	cc.Data["Contact"] = contact
}

// AdminGet request handler for admin
func (cc *ContactController) AdminGet() {
	if err := Authenticate(cc.Ctx); err != nil {
		cc.Redirect("/admin", http.StatusSeeOther)
		return
	}

	cc.TplName = "admin/contact.tpl"
	cc.Data["URI"] = "/contact"
	cc.Data["Title"] = "Contact Us"

	var contact = &contents.Contact{}
	err := contact.Read("contact")
	if err != nil {
		cc.Data["Error"] = err.Error()
		return
	}
	cc.Data["Contact"] = contact
}

// AdminPost request handler for admin
func (cc *ContactController) AdminPost() {
	if err := Authenticate(cc.Ctx); err != nil {
		cc.Redirect("/admin", http.StatusSeeOther)
		return
	}

	cc.TplName = "admin/contact.tpl"
	cc.Data["Title"] = "Contact Us"
	cc.Data["URI"] = "/contact"

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
