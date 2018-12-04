package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"wsf/PartielDevops/handler"
)

func main() {

	// connection := os.Getenv("DATABASE_URL")

	fmt.Println(os.Getenv("DATABASE_URL"))

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	myHandler := handler.NewHandler()

	server := &http.Server{
		Addr:    ":" + port,
		Handler: myHandler,
	}

	fmt.Println("Coucou le log!")
	fmt.Println("Server is running at", port)

	log.Fatal(server.ListenAndServe())
}
