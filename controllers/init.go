package controllers

import (
	"log"

	"git.urantiatech.com/pkg/boltdb"
)

var filename = "kalimpongbroadband.db"
var db *boltdb.DB

func init() {
	var err error
	if db, err = boltdb.Open("db/" + filename); err != nil {
		log.Fatal(err)
	}
}
