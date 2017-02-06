module ApplyToList where
import BinaryRelation

applyRel :: (Eq k) => k -> (BinaryRelation k v) -> [v]

applyRel ky pairs = [y | (x,y) <- pairs, ky == x]

applyToList :: (Eq k) => [k] -> (BinaryRelation k v) -> [v]

applyToList [] _ = []
applyToList (x:xs) pairs = (applyRel x pairs) ++ applyToList xs pairs