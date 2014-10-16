module Smash.Curve (curve) where

import Data.List

type Point = (Float,Float,Float)

strPt :: Point -> String
strPt = show

curve1 :: [Point] -> String
curve1 ps = "cmds.curve(degree=1, points=("
            ++ (intercalate ", " $ map strPt ps)
            ++ "), knots=("
            ++ (intercalate ", " $ map show [0..length ps - 1])
            ++ "))"

