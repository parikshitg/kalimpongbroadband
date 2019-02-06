package contents

import (
	"encoding/json"
	"log"

	"github.com/boltdb/bolt"
)

// PlanBucket name
const PlanBucket = "plans"

// Plan details
type Plan struct {
	ID            uint64 `json:"id"`
	Slug          string `json:"slug"`
	Name          string `json:"name"`
	Provider      string `json:"provider"`
	Speed         string `json:"speed"`
	MonthlyRental int    `json:"monthly"`
	AnualRental   int    `json:"annual"`
}

// Read contact information from DB
func (plan *Plan) Read(slug string) error {
	// Create a read-only transaction.
	if err := db.View(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(PlanBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Get the data
		item := b.Get([]byte(slug))
		if item == nil {
			return ErrorContentNotFound
		}

		// Convert JSON to struct
		err := json.Unmarshal(item, plan)
		return err
	}); err != nil {
		return err
	}
	return nil
}

// Write contact information to DB
func (plan *Plan) Write(slug string) error {
	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(PlanBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Convert to JSON
		item, err := json.Marshal(plan)
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
