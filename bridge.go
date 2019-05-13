package main

import (
	"C"

	"encoding/json"
	"strings"

	"github.com/moby/buildkit/frontend/dockerfile/parser"
)

//export Dump
func Dump(in *C.char) *C.char {
	result, err := parser.Parse(strings.NewReader(C.GoString(in)))
	if err != nil {
		panic(err)
	}
	j, err := json.Marshal(result.AST)
	if err != nil {
		panic(err)
	}
	return C.CString(string(j))
}

func main() {}
