package models

import (
	"fmt"
	"log"
)

type Product struct {
	Title string `json:"title"`
	Body  string `json:"body"`
}
