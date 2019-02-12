package contents

import (
	"encoding/json"
	"log"

	"github.com/boltdb/bolt"
)

// ContactBucket name
const ContactBucket = "contacts"

// Contact infomation
type Contact struct {
	ID       uint64 `json:"id"`
	Slug     string `json:"slug"`
	Name     string `json:"name"`
	Email    string `json:"email"`
	Phone1   string `json:"phone1"`
	Phone2   string `json:"phone2"`
	Phone3   string `json:"phone3"`
	WhatsApp string `json:"whatsapp"`
	Address1 string `json:"address1"`
	Address2 string `json:"address2"`
	City     string `json:"city"`
	State    string `json:"state"`
	Pincode  string `json:"pincode"`
}

// Read contact information from DB
func (contact *Contact) Read(slug string) error {
	// Create a read-only transaction.
	if err := db.View(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ContactBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Get the data
		item := b.Get([]byte(slug))
		if item == nil {
			return ErrorContentNotFound
		}

		// Convert JSON to struct
		err := json.Unmarshal(item, contact)
		return err
	}); err != nil {
		return err
	}
	return nil
}

// Write contact information to DB
func (contact *Contact) Write(slug string) error {
	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ContactBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Convert to JSON
		item, err := json.Marshal(contact)
		if err != nil {
			return err
		}

		// Put the data
		err = b.Put([]byte(slug), item)
		return err
	}); err != nil {
		return err
	}
	return nil
}
