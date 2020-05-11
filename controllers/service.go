package controllers

import (
	"io"
	"log"
	"net/http"
	"os"

	"git.urantiatech.com/pkg/slug"
	"github.com/astaxie/beego"
	"github.com/parikshitg/kalimpongbroadband/contents"
)

// ServiceController definition
type ServiceController struct {
	beego.Controller
}

// Get request handler
func (pc *ServiceController) Get() {
	var service = contents.Service{}
	pc.TplName = "page/service.tpl"
	pc.Data["URI"] = "/services"

	switch pc.GetString("op") {
	case "edit":
		pc.Data["Title"] = "Edit Service"
		service.Slug = pc.GetString("slug")
		pc.Data["Error"] = service.Read()
		pc.Data["Service"] = service
		pc.TplName = "admin/service.tpl"
		return

	case "create":
		pc.Data["Title"] = "Add New Service"
		pc.TplName = "admin/service.tpl"
		return

	case "remove":
		service.Slug = pc.GetString("slug")
		service.Delete()
	}

	pc.TplName = "admin/services.tpl"
	pc.Data["Title"] = "Our Services"
	services := service.ReadAll()
	pc.Data["Services"] = services
}

// Post request handler
func (pc *ServiceController) Post() {
	pc.TplName = "admin/service.tpl"

	service := &contents.Service{
		Slug:        pc.GetString("slug"),
		Name:        pc.GetString("name"),
		Description: pc.GetString("description"),
		Image:       pc.GetString("oldimage"),
	}
	pc.Data["Title"] = pc.GetString("title")
	pc.Data["Service"] = service

	if service.Slug == "" {
		service.Slug = slug.StringToSlug(service.Name)
	}

	file, header, err := pc.GetFile("image")
	if err == nil {
		// Create path
		path := "uploads/services/"
		if err := os.MkdirAll(path, os.ModeDir|os.ModePerm); err != nil {
			log.Fatal(err)
		}

		//create destination file making sure the path is writeable.
		dst, err := os.Create(path + header.Filename)
		defer dst.Close()
		if err != nil {
			pc.Data["Error"] = "Error:" + err.Error()
			return
		}
		//copy the uploaded file to the destination file
		if _, err := io.Copy(dst, file); err != nil {
			pc.Data["Error"] = "Can't copy file: " + dst.Name()
			return
		}
		service.Image = header.Filename
	}

	err = service.Write()
	if err != nil {
		pc.Data["Error"] = err.Error()
		return
	}

	// Show all services
	pc.Redirect("/admin/services", http.StatusSeeOther)
}
