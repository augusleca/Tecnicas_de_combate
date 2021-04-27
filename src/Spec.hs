module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test 1) presionGolpe" $ do
    it "La presion de un golpe con 200 horas de entrenamiento sobre una Bolsa de Entrenamiento deberia ser aproximadamente de 68" $ do
      presionGolpe 200 "Bolsa de Entrenamiento" `shouldBe` 68.181818182
  describe "Test 2.1) Golpe Gomu-Gomu Elephant Gatling" $ do  
    it "La presion de un golpe Gomo Gomu sobre la Bolsa de Entrenamineto deberia ser aproximadamente de 61" $ do
      gomuGomu  "Bolsa de Entrenamiento"  `shouldBe` 61.363636364
  describe "Test 2.2) normalesConsecutivos" $ do  
    it "La presion de unos Golpes Normales Consecutivos sobre la Bolsa de Entrenamiento deberia ser aproximadamente de 81 " $ do
      normalesConsecutivos "Bolsa de Entrenamiento"  `shouldBe` 81.818181818
  describe "Test 3.1) esDificil" $ do  
    it "La bolsa de entrenamiento es un objetivo Dificil" $ do
      esDificil "Bolsa de Entrenamiento"  `shouldBe` True
    it "El puf no es un objetivo dificil" $ do
     esDificil "Puf" `shouldBe` False
  describe "Test 3.2) esAccesible" $ do
    it "Una Bolsa de Entrenamiento es accesible" $ do
      esAccesible "Bolsa de entranamiento" `shouldBe` True
    it "Un puf no es accesible" $ do
      esAccesible "puf" `shouldBe` False 

