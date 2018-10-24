module Main where

import Prelude (Unit, bind, discard)

import Blessed (append, box, render, screen, title)
import Effect (Effect)

main :: Effect Unit
main = do
  s <- screen
  b <- box
  append s b
  title s "First attempt"
  render s
