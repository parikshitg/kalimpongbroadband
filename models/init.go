package models

import (
	"log"

	"git.urantiatech.com/pkg/boltdb"
)

var DBFile = "kalimpongbroadband.db"
var DB *boltdb.DB

func init() {
	var err error
	if DB, err = boltdb.Open("db/" + DBFile); err != nil {
		log.Fatal(err)
	}
}
