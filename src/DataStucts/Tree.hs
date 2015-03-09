

module DataStructs.Tree where

import BasePrelude

data FingerTree v a = Leaf v | Branch v (FingerTree v a) (FingerTree v a)
  deriving (Show)


instance (Eq a, Eq v) => Eq (FingerTree v a) where
  (Branch v1 l1r r1r) == (Branch v2 l2r r2r)
    | v1 /= v2 = False
    | otherwise = l1r == l2r && r1r == r2r
  (Leaf v1) == (Leaf v2) = v1 == v2
  (Leaf _) == _ = False
  _ == (Leaf _) = False



