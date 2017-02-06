module BinaryRelationOps where
import BinaryRelation

project1 :: (BinaryRelation a b) -> [a]
project1 pairs = [x | (x,y) <- pairs]

project2 :: (BinaryRelation a b) -> [b]
project2 pairs = [y | (x,y) <- pairs]

select :: ((a,b) -> Bool) -> (BinaryRelation a b) -> (BinaryRelation a b)
select pred pairs = [(x,y) | (x,y) <- pairs, pred (x,y)]

compose :: Eq b => (BinaryRelation a b) -> (BinaryRelation b c) -> (BinaryRelation a c)
compose p1 p2 = [(a,d)| (a,b) <- p1, (c,d) <- p2, b == c]