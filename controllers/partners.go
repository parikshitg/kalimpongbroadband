package controllers

import (
	"github.com/urantiatech/beego"
)

type PartnersController struct {
	beego.Controller
}

func (c *PartnersController) Get() {
	var err error
	c.TplName = "page/partners.tpl"

	// db.List(bucket)
	c.Data["Partners"], err = db.List("partners")
	if err != nil {
		c.Data["Error"] = err.Error()
		c.TplName = "page/error.tpl"
	}

}
