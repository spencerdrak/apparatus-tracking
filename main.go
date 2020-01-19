package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", handler)
	http.HandleFunc("/readiness", readiness)
	http.ListenAndServe(":8080", nil)
}

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "MVFD Apparatus Tracker\n")
}

func readiness(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(200)
}
