module Library where
import PdePreludat

type Horas = Number
type Objetivo = String
type Presion = Number
type Golpe = Objetivo -> Number

--EJ 1)
presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horas objetivo = poder horas / fortaleza objetivo

poder :: Horas -> Horas -- 15 veces horas de entrenamiento
poder horas = (15*) horas

fortaleza :: Golpe -- Cantidad del doble de letras de su nombre
fortaleza = (2*).length
--EJ 2)
gomuGomu :: Golpe -- Golpe al cual ya se le dedico 180 horas
gomuGomu = presionGolpe 180

normalesConsecutivos :: Golpe -- Golpe al cual ya se le dedico 240 horas
normalesConsecutivos = presionGolpe 240
--EJ 3)
esDificil :: Objetivo -> Bool
esDificil = (<100).gomuGomu

focalizarObjetivo :: Objetivo -> Objetivo
focalizarObjetivo = take 7 

valorEnRango :: Number -> Bool
valorEnRango medio = 200 <= medio && medio <= 400

esAccesible :: Objetivo -> Bool
esAccesible = valorEnRango.normalesConsecutivos.focalizarObjetivo
