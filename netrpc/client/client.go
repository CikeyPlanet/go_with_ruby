package main

import (
	"log"
	"net"
	"net/rpc/jsonrpc"

	"github.com/CikeyPlanet/go_with_ruby/netrpc/server"
)

func main() {
	client, err := net.Dial("tcp", "127.0.0.1:1234")
	if err != nil {
		log.Fatal("dialing:", err)
	}
	// Synchronous call
	var args = &server.Args{Index: 7}
	var reply server.Response
	c := jsonrpc.NewClient(client)
	err = c.Call("Resolver.Fibonacci", args, &reply)
	if err != nil {
		log.Fatal("arith error:", err)
	}
	log.Printf("Result: %d", reply)

	var r int
	err = c.Call("Resolver.Hello", 1, &r)
	if err != nil {
		log.Fatal("arith error:", err)
	}
	log.Printf("Result: %d", r)
}
