package contents

import (
	"encoding/json"
	"log"

	"github.com/boltdb/bolt"
)

// ServiceBucket name
const ServiceBucket = "services"

// Service information
type Service struct {
	ID          uint64 `json:"id"`
	Slug        string `json:"slug"`
	Name        string `json:"name"`
	Description string `json:"description"`
	Image       string `json:"image"`
}

// Read contact information from DB
func (service *Service) Read() error {
	// Create a read-only transaction.
	if err := db.View(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ServiceBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Get the data
		item := b.Get([]byte(service.Slug))
		if item == nil {
			return ErrorContentNotFound
		}

		// Convert JSON to struct
		err := json.Unmarshal(item, service)
		return err
	}); err != nil {
		return err
	}
	return nil
}

// ReadAll services from DB
func (service *Service) ReadAll() []Service {
	var services []Service
	// Create a read-only transaction.
	_ = db.View(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ServiceBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Create a cursor for iteration.
		c := b.Cursor()

		// Iterate over items in sorted key order. This starts from the
		// first key/value pair and updates the k/v variables to the
		// next key/value on each iteration.
		//
		// The loop finishes at the end of the cursor when a nil key is returned.
		for k, v := c.First(); k != nil; k, v = c.Next() {
			p := Service{}
			if err := json.Unmarshal(v, &p); err != nil {
				return err
			}
			services = append(services, p)
		}
		return nil
	})
	return services
}

// Write contact information to DB
func (service *Service) Write() error {
	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ServiceBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Convert to JSON
		item, err := json.Marshal(service)
		if err != nil {
			return err
		}

		// Put the data
		err = b.Put([]byte(service.Slug), item)
		return err
	}); err != nil {
		return err
	}
	return nil
}

// Delete service from the DB
func (service *Service) Delete() error {
	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ServiceBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Delete the data
		err := b.Delete([]byte(service.Slug))
		return err
	}); err != nil {
		return err
	}
	return nil
}
