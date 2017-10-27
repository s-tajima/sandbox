package main

import (
	"fmt"
	"github.com/julienschmidt/httprouter"
	"log"
	"net/http"
)

func getIndex(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	fmt.Fprint(w, "[Go] Index.\n")
}

func getProxy(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	fmt.Fprintf(w, "[Go] Proxy\n")
}

func main() {
	router := httprouter.New()
	router.GET("/", getIndex)
	router.GET("/proxy", getProxy)

	log.Fatal(http.ListenAndServe(":5000", router))
}
