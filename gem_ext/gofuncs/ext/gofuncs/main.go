package main

import "C"

//export fibonacci
func fibonacci(a C.int) C.int {
        if a < 0 {
            return 0
        }
	if a == 0 || a == 1{
            return 1
        }
        return fibonacci(a-1)+fibonacci(a-2)
}

func main() {}
