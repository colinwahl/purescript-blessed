module Blessed where

import Prelude (Unit)

import Effect (Effect)

-- Screen type

foreign import data Screen :: Type

foreign import screen :: Effect Screen

-- Box type

foreign import data Box :: Type

foreign import box :: Effect Box

-- Type classes

class Renderable a where
  append :: Screen -> a -> Effect Unit

instance renderableBox :: Renderable Box where
  append = appendBox

-- JS utilities

foreign import appendBox :: Screen -> Box -> Effect Unit

foreign import title :: Screen -> String -> Effect Unit

foreign import render :: Screen -> Effect Unit

foreign import exitKeys :: Screen -> Array String -> Effect Unit
