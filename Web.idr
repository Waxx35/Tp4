
module Web

import Istic.ScribbleWeb
import ENS.Demo

blueCircle : Image
blueCircle = FGColour Blue (FCircle 300)

sunAsset : String
sunAsset = "images/sun.svg"

sunny : Image
sunny = On  (FromFile 220 220 sunAsset)
            (FGColour (RGBA 15 19 31 255) (FRectangle 360 360))
           

main : IO ()
main = 
  -- writeImageToHTML "Blue circle" blueCircle
  -- writeImageToHTML "Sunny" sunny
  demoCircToRec
