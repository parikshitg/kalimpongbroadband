package contents

import (
	"encoding/json"
	"log"

	"github.com/boltdb/bolt"
)

// ProductBucket name
const ProductBucket = "products"

// Product information
type Product struct {
	ID          uint64 `json:"id"`
	Slug        string `json:"slug"`
	Name        string `json:"name"`
	Description string `json:"description"`
	Image       string `json:"image"`
}

// Read contact information from DB
func (product *Product) Read() error {
	// Create a read-only transaction.
	if err := db.View(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ProductBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Get the data
		item := b.Get([]byte(product.Slug))
		if item == nil {
			return ErrorContentNotFound
		}

		// Convert JSON to struct
		err := json.Unmarshal(item, product)
		return err
	}); err != nil {
		return err
	}
	return nil
}

// ReadAll products from DB
func (product *Product) ReadAll() []Product {
	var products []Product
	// Create a read-only transaction.
	_ = db.View(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ProductBucket))
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
			p := Product{}
			if err := json.Unmarshal(v, &p); err != nil {
				return err
			}
			products = append(products, p)
		}
		return nil
	})
	return products
}

// Write contact information to DB
func (product *Product) Write() error {
	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ProductBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Convert to JSON
		item, err := json.Marshal(product)
		if err != nil {
			return err
		}

		// Put the data
		err = b.Put([]byte(product.Slug), item)
		return err
	}); err != nil {
		return err
	}
	return nil
}

// Delete product from the DB
func (product *Product) Delete() error {
	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(ProductBucket))
		if b == nil {
			log.Fatal("Bucket Not Found")
		}

		// Delete the data
		err := b.Delete([]byte(product.Slug))
		return err
	}); err != nil {
		return err
	}
	return nil
}
