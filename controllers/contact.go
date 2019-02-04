package controllers

import (
	"github.com/urantiatech/beego"
)

type ContactController struct {
	beego.Controller
}

func (c *ContactController) Get() {
	var err error
	c.TplName = "page/contact.tpl"

	// db.List(bucket)
	c.Data["Contact"], err = db.List("contacts")
	if err != nil {
		c.Data["Error"] = err.Error()
		c.TplName = "page/error.tpl"
	}

}
