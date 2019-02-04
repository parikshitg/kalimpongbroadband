package controllers

import (
	"github.com/urantiatech/beego"
)

type PlansController struct {
	beego.Controller
}

func (c *PlansController) Get() {
	var err error
	c.TplName = "page/plans.tpl"

	// db.List(bucket)
	c.Data["Plans"], err = db.List("plans")
	if err != nil {
		c.Data["Error"] = err.Error()
		c.TplName = "page/error.tpl"
	}

}
