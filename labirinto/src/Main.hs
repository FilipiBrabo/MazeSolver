module Main where

import Parser
import Codec.Picture

mazeName :: String
mazeName = "MAZE03"

getMazeImagePath :: String -> FilePath
getMazeImagePath name = "src/mazes/" ++ name ++ ".png"

mazePath :: String
mazePath = getMazeImagePath mazeName

main :: IO ()
main = do
  -- Read image is an IO action
  mazeImage <- readImage $ getMazeImagePath mazeName

  -- Parse image to a Char Matrix
  let mazeMatrix = getMatrixFromImage mazeImage

  print mazeMatrix
