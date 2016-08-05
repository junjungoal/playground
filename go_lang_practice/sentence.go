package main

import(
  f "fmt"
)

func main() {
  a, b := 10, 100
  if a > b {
    f.Println("a is larger than b")   
  } else if a < b {
    f.Println("a is smaller than b")
  } else{
    f.Println("a is equals b")
  }

  for i := 0; i < 10; i++{
    f.Println(i)
  }
}

