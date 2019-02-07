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
	MonthlyRental string `json:"monthly"`
	AnnualRental  string `json:"annual"`
}

// Read broadband plan informations from DB
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

// ReadAll broadband plan informations from DB
func (plan *Plan) ReadAll() []Plan {
	var plans []Plan
	// Create a read-only transaction.
	_ = db.View(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(PlanBucket))
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
			p := Plan{}
			if err := json.Unmarshal(v, &p); err != nil {
				return err
			}
			plans = append(plans, p)
		}
		return nil
	})
	return plans
}

// Write broadband plan informations to DB
func (plan *Plan) Write() error {
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
		err = b.Put([]byte(plan.Slug), item)
		return err
	}); err != nil {
		return err
	}
	return nil
}

// Delete broadband plan informations from DB
func (plan *Plan) Delete() error {
	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(PlanBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Delete the data
		err := b.Delete([]byte(plan.Slug))
		return err
	}); err != nil {
		return err
	}
	return nil
}

// IsEmpty checks if plan is empty
func (plan *Plan) IsEmpty() bool {
	return plan.Name == "" && plan.Provider == "" && plan.Speed == "" && plan.MonthlyRental == "" && plan.AnnualRental == ""
}
