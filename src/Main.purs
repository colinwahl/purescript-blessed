module Main where

import Blessed (append, box, exitKeys, render, screen, title)
import Effect (Effect)
import Prelude (Unit, bind, discard)

main :: Effect Unit
main = do
  s <- screen
  b <- box
  append s b
  title s "First attempt"
  exitKeys s [ "escape", "q", "C-c" ]
  render s
