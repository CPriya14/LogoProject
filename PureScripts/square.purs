module Main where

import Prelude

import Math
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe(..))
import Graphics.Canvas (CANVAS, rect, arc, fillPath, setFillStyle, getContext2D,
                        getCanvasElementById)
import Partial.Unsafe (unsafePartial)

main :: Eff (canvas :: CANVAS) Unit
main = void $ unsafePartial do
  Just canvas <- getCanvasElementById "canvas"
  ctx <- getContext2D canvas

  _ <- setFillStyle "#0000FF" ctx
  fillPath ctx $ rect ctx
    { x: 120.0
    , y: 120.0
    , w: 350.0
    , h: 350.0
}
