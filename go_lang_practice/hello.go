package main
import (
  f "fmt"
  . "strings"
)

var message string = "hello world"

var (
  a string = "aaa"
  b        = "bbb"
  c        = "ccc"
)

var foo, bar, buz string = "foo", "bar", "buz"
func main(){
  message := "hello world"
  f.Println(ToUpper(message))
}

