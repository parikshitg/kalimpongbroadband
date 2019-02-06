package contents

import (
	"encoding/json"
	"log"

	"github.com/boltdb/bolt"
)

const PlanBucket = "plans"

type Plan struct {
	ID            uint64 `json:"id"`
	Slug          string `json:"slug"`
	Title         string `json:"title"`
	Provider      string `json:"provider"`
	Speed         string `json:"speed"`
	MonthlyRental int    `json:"monthly"`
	AnualRental   int    `json:"annual"`
}

func (this *Plan) Read(slug string) error {
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
		err := json.Unmarshal(item, this)
		return err
	}); err != nil {
		return err
	}
	return nil
}

func (this *Plan) Write(slug string) error {
	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(PlanBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Convert to JSON
		item, err := json.Marshal(this)
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