package controllers

import (
	"github.com/urantiatech/beego"
)

type ServicesController struct {
	beego.Controller
}

func (c *ServicesController) Get() {
	var err error
	c.TplName = "page/services.tpl"

	// db.List(bucket)
	c.Data["Services"], err = db.List("services")
	if err != nil {
		c.Data["Error"] = err.Error()
		c.TplName = "page/error.tpl"
	}

}
