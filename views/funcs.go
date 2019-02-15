package views

import (
	"log"
	"text/template"
)

// FuncMap passes functions to templates
var FuncMap = template.FuncMap{
	"activeURI": ActiveURI,
}

// ActiveURI compares two urls
func ActiveURI(uri1 string, uri2 string) bool {
	log.Println("uri1:", uri1, " uri2:", uri2)
	return uri1 == uri2
}
