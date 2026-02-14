
module Test

import Hedgehog
import Data.List
import Data.SOP
import Data.String
import Data.Vect
import Data.SortedMap
import System

import ENS.Test
import Istic.Test
import Istic.ScribbleWeb
import Exercises as EXO
import ENS.Exercises as SOL


-- Un générateur de Nat entre 0 et 20
smallNat : Gen Nat
smallNat = nat (linear 0 20)


tests : List (String, Property)
tests = [
    ("[sum]",
          property $ do
          n <- forAll $ smallNat
          let obtained = EXO.sum n
          let expected = SOL.sum n
          assertEqual obtained expected)
  , ("[produit0]",
          property $ do
          n <- forAll $ smallNat
          let obtained = EXO.produit0 n
          let expected = SOL.produit0 n
          assertEqual obtained expected)
  , ("[produit1]",
          property $ do
          n <- forAll $ nat (linear 0 12)
          let obtained = EXO.produit1 n
          let expected = SOL.produit1 n
          assertEqual obtained expected)
  , ("[downTo0]",
          property $ do
          n <- forAll $ smallNat
          let obtained = EXO.downTo0 n
          let expected = SOL.downTo0 n
          assertEqual obtained expected)
  , ("[pop]",
          property $ do
          n <- forAll $ smallNat
          let obtained = EXO.pop n
          let expected = SOL.pop n
          assertEqual obtained expected)
  , ("[dodo]",
          property $ do
          n <- forAll $ smallNat
          let obtained = EXO.dodo n
          let expected = SOL.dodo n
          assertEqual obtained expected)
  , ("[blabla]",
          property $ do
          n <- forAll $ smallNat
          let obtained = EXO.blabla n
          let expected = SOL.blabla n
          assertEqual obtained expected)
  , ("[impairs]",
          property $ do
          n <- forAll $ smallNat
          let obtained = EXO.impairs n
          let expected = SOL.impairs n
          assertEqual obtained expected)
  , ("[replicate]",
          property $ do
          n <- forAll $ smallNat
          c <- forAll $ char (constant 'a' 'z')
          let obtained = EXO.replicate n c
          let expected = SOL.replicate n c
          assertEqual obtained expected)
  , ("[triangle]",
          property $ do
          n <- forAll $ nat (linear 0 15)
          let obtained = EXO.triangle n
          let expected = SOL.triangle n
          assertEqual obtained expected)
  , ("[circlesNb]",
          property $ do
          r <- forAll $ double (constant 1 50)
          let obtained = EXO.circlesNb (Circle r)
          let expected = SOL.circlesNb (Circle r)
          assertEqual obtained expected)
  , ("[circlesNb - FCircle]",
          property $ do
          r <- forAll $ double (constant 1 50)
          let obtained = EXO.circlesNb (FCircle r)
          let expected = SOL.circlesNb (FCircle r)
          assertEqual obtained expected)
  , ("[circlesNb - Rectangle]",
          property $ do
          [w, h] <- forAll $ np [double (constant 1 50), double (constant 1 50)]
          let obtained = EXO.circlesNb (Rectangle w h)
          let expected = SOL.circlesNb (Rectangle w h)
          assertEqual obtained expected)
  , ("[circlesNb - Beside]",
          property $ do
          [r1, r2] <- forAll $ np [double (constant 1 50), double (constant 1 50)]
          let img = Beside (Circle r1) (FCircle r2)
          let obtained = EXO.circlesNb img
          let expected = SOL.circlesNb img
          assertEqual obtained expected)
  , ("[circlesNb - Above]",
          property $ do
          [r1, r2] <- forAll $ np [double (constant 1 50), double (constant 1 50)]
          let img = Above (Circle r1) (Rectangle r2 r2)
          let obtained = EXO.circlesNb img
          let expected = SOL.circlesNb img
          assertEqual obtained expected)
  , ("[circToRec - Circle]",
          property $ do
          r <- forAll $ double (constant 1 50)
          let obtained = EXO.circlesNb (EXO.circToRec (Circle r))
          let expected = SOL.circlesNb (SOL.circToRec (Circle r))
          assertEqual obtained expected)
  , ("[circToRec - FCircle]",
          property $ do
          r <- forAll $ double (constant 1 50)
          let obtained = EXO.circlesNb (EXO.circToRec (FCircle r))
          let expected = SOL.circlesNb (SOL.circToRec (FCircle r))
          assertEqual obtained expected)
  , ("[circToRec - Rectangle]",
          property $ do
          [w, h] <- forAll $ np [double (constant 1 50), double (constant 1 50)]
          let obtained = EXO.circlesNb (EXO.circToRec (Rectangle w h))
          let expected = SOL.circlesNb (SOL.circToRec (Rectangle w h))
          assertEqual obtained expected)
  , ("[circToRec - Beside]",
          property $ do
          [r1, r2] <- forAll $ np [double (constant 1 50), double (constant 1 50)]
          let img = Beside (Circle r1) (FCircle r2)
          let obtained = EXO.circlesNb (EXO.circToRec img)
          let expected = SOL.circlesNb (SOL.circToRec img)
          assertEqual obtained expected)
  , ("[not]",
          property $ do
          b <- forAll $ bool
          let obtained = EXO.not b
          let expected = SOL.not b
          assertEqual obtained expected)
  , ("[(&&)]",
          property $ do
          [a, b] <- forAll $ np [bool, bool]
          let obtained = EXO.(&&) a b
          let expected = SOL.(&&) a b
          assertEqual obtained expected)
  , ("[(||)]",
          property $ do
          [a, b] <- forAll $ np [bool, bool]
          let obtained = EXO.(||) a b
          let expected = SOL.(||) a b
          assertEqual obtained expected)
  ]


-- -------------------------------------------------
-- NE MODIFIEZ PAS LA FONCTION main CI-DESSOUS.   --
-- -------------------------------------------------
export
main : IO Int
main = run tests
-- -------------------------------------------------
