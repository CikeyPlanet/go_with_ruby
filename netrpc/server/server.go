package server

import (
	"errors"
	"fmt"
)

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

func (r *Resolver) Hello(args int, response *int) error {
	fmt.Println("hi")
	*response = 2
	return nil
}
