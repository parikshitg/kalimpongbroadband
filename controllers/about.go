package controllers

import (
	"github.com/urantiatech/beego"
)

type AboutController struct {
	beego.Controller
}

func (c *AboutController) Get() {
	var err error
	c.TplName = "page/about.tpl"

	// db.Read(bucket, slug)
	c.Data["Page"], err = db.Read("pages", "about")
	if err != nil {
		c.Data["Error"] = err.Error()
		c.TplName = "page/error.tpl"
	}
}
