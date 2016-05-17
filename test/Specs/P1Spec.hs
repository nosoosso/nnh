module Specs.P1Spec (main, spec) where

import           P1
import           Test.Hspec

main :: IO ()
main = hspec spec


spec :: Spec
spec = do
  describe "p1" $ do
    it "returns the Nothing when given a null list" $
      (p1 []::(Maybe [Int]))  `shouldBe` Nothing
    it "returns the Just value when given a single element list" $
      p1 [3] `shouldBe` Just 3
    it "returns the last element of a list wrapped in a Just" $
      p1 [0,1,2,3,4,5] `shouldBe` Just 5
