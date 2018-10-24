module Blessed where

import Prelude (Unit)

import Effect (Effect)

-- Screen type

foreign import data Screen :: Type

foreign import screen :: Effect Screen

-- Box type

foreign import data Box :: Type

foreign import box :: Effect Box

-- Utilities

foreign import append :: Screen -> Box -> Effect Unit

foreign import title :: Screen -> String -> Effect Unit

foreign import render :: Screen -> Effect Unit
