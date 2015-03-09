
module Probs.Harmonic where

import BasePrelude

data Harm = Harm {
  _start :: Int
  _stop :: Int
  _step :: Int
} deriving (Eq, Show)

type Harms = [(
