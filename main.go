package main

import (
	"github.com/astaxie/beego"
	_ "github.com/parikshitg/kalimpongbroadband/contents"
	_ "github.com/parikshitg/kalimpongbroadband/routers"
	"github.com/parikshitg/kalimpongbroadband/views"
)

func main() {
	beego.AddFuncMap("activeURI", views.ActiveURI)
	beego.AddFuncMap("htmlString", views.HtmlString)
	beego.Run()
}
