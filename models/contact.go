package models

import (
	"fmt"
	"log"
)

type Contact struct {
	Name     string `json:"name"`
	Phone1   string `json:"phone1"`
	Phone2   string `json:"phone2"`
	Phone3   string `json:"phone3"`
	WhatsApp string `json:"whatsapp"`
	Address1 string `json:"address1"`
	Address2 string `json:"address2"`
	City     string `json:"city"`
	State    string `json:"state"`
	Email    string `json:"email"`
}
