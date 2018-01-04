package main

import (
	"errors"

	"github.com/DavidHuie/quartz/go/quartz"
)

func main() {
	resolver := &Resolver{}
	quartz.RegisterName("resolver", resolver)
	quartz.Start()
}

type Resolver struct{}

type Args struct {
	Index int
}

type Response struct {
	Result int
}

func (r *Resolver) Fibonacci(args Args, response *Response) error {
	if args.Index < 0 {
		return errors.New("The index must larger than 0")
	}
	response.Result = fibonacci(args.Index)
	return nil
}

func fibonacci(a int) int {
	if a == 0 || a == 1 {
		return 1
	}
	return fibonacci(a-1) + fibonacci(a-2)
}
