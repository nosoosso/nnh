module Specs.P4Spec(main, spec) where

import           P4
import           Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "p4" $ do
    it "" $
      p4 [] `shouldBe` 0
    it "" $
      p4 [1,2,3,4,5] `shouldBe` 5
    it "" $
      p4 "Hello" `shouldBe` 5
  describe "p4'" $ do
    it "" $
      p4' [] `shouldBe` 0
    it "" $
      p4' [1,2,3,4,5] `shouldBe` 5
    it "" $
      p4' "Hello" `shouldBe` 5
  describe "p4''" $ do
    it "" $
      p4'' [] `shouldBe` 0
    it "" $
      p4'' [1,2,3,4,5] `shouldBe` 5
    it "" $
      p4'' "Hello" `shouldBe` 5
