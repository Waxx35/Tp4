module Main

import Exercises

import ENS.Info
import ENS.Demo
import Istic.ScribbleWeb
import System.Random
import Data.Nat
import Data.List
import Data.List1


%hide Prelude.(&&)
%hide Prelude.(||)
%hide Prelude.not



||| Point d'entrée du programme.
||| Affiche un message de bienvenue et un message de fin colorés pour que vous puissiez 
||| avoir confirmation que le programme s'est exécuté et a terminé.
|||
||| Pour exécuter ce programme dans VS Code, utilisez la tâche :
|||   "Run Idris2 Project" (raccourci : Ctrl+Shift+B puis sélectionnez la tâche)
||| ou lancez ./run dans le terminal à la racine du projet.
main : IO ()
main = do
  putStartMessage
  -- TODO : donnez des exemples d'utilisation pour toutes vos fonctions ici. Il
  --        est primordial que vous vous habituiez à utiliser les fonctions que
  --        vous définissez.

  putEndMessage