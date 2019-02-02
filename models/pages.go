package models

import (
	"fmt"
	"log"
)

type Page struct {
	Title string `json:"title"`
	Body  string `json:"body"`
}
