module Main where

import Prelude

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe(..))
import Graphics.Canvas (CANVAS, rect, arc, fillPath, setFillStyle, getContext2D,
                        getCanvasElementById)
import Partial.Unsafe (unsafePartial)

main :: Eff (canvas :: CANVAS) Unit
main = void $ unsafePartial do
  Just canvas <- getCanvasElementById "canvas"
  ctx <- getContext2D canvas

  _ <- setFillStyle "#ffffff" ctx
  fillPath ctx $ arc ctx
    { x      : 295.0
    , y      : 295.0
    , r      : 100.0
    , start  : 0.0
    , end    : 3.14 * 2.0
}
