package models

import (
	"fmt"
	"log"
)

type Plan struct {
	Title         string `json:"title"`
	Provider      string `json:"provider"`
	Speed         string `json:"speed"`
	MonthlyRental int    `json:"monthly"`
	AnualRental   int    `json:"annual"`
}
