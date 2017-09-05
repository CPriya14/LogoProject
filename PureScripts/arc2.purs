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

  _ <- setFillStyle "#0000FF" ctx
  fillPath ctx $ arc ctx
    { x      : 295.0
    , y      : 305.0
    , r      : 70.0
    , start  : 3.14*  1.5
    , end    : 3.14 * 0.5
}
