package main

import (
	_ "git.urantiatech.com/commercial/kalimpongbroadband/models"
	_ "git.urantiatech.com/commercial/kalimpongbroadband/routers"
	"github.com/urantiatech/beego"
)

func main() {
	beego.Run()
}
