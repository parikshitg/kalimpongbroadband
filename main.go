package main

import (
	_ "git.urantiatech.com/commercial/kalimpongbroadband/contents"
	_ "git.urantiatech.com/commercial/kalimpongbroadband/routers"
	"git.urantiatech.com/commercial/kalimpongbroadband/views"
	"github.com/urantiatech/beego"
)

func main() {
	beego.AddFuncMap("activeURI", views.ActiveURI)
	beego.AddFuncMap("htmlString", views.HtmlString)
	beego.Run()
}
