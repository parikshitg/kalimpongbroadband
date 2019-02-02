package models

import (
	"fmt"
	"log"
)

type Service struct {
	Title string `json:"title"`
	Body  string `json:"body"`
}
