package contents

import (
	"errors"
	"log"

	"github.com/boltdb/bolt"
)

var filename = "kalimpongbroadband.db"
var buckets = []string{PageBucket, ContactBucket, PlanBucket, ProductBucket, ServiceBucket}

var db *bolt.DB

func init() {
	var err error

	if db, err = bolt.Open("db/"+filename, 0644, nil); err != nil {
		log.Fatal(err)
	}

	// Create a read-write transaction.
	if err := db.Update(func(tx *bolt.Tx) error {
		// Initialize buckets
		for _, b := range buckets {
			_, err = tx.CreateBucketIfNotExists([]byte(b))
			if err != nil {
				return err
			}
		}
		return nil
	}); err != nil {
		log.Fatal(err)
	}
}

// ErrorContentNotFound on the database
var ErrorContentNotFound = errors.New("Content not found")
