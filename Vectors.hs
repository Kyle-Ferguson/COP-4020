-- $Id: Vectors.hs,v 1.1 2015/01/21 21:50:41 leavens Exp leavens $
module Vectors where

-- Vectors are represented by finite lists of coordinate values.
type Vector = [Double]
scale :: Double -> Vector -> Vector
add :: Vector -> Vector -> Vector
dot :: Vector -> Vector -> Double

scale scalar v = map (*scalar) v

add [] [] = []
add (x:xs) (y:ys) = (x+y):(add xs ys)

dot [] [] = 0
dot (x:xs) (y:ys) = x*y + dot xs ys

