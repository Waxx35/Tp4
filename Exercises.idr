
module Exercises

import Data.Nat

import Istic.ScribbleWeb

-- IMPORTANT : entrez le « username » de chaque étudiant travaillant ensemble
-- sur ce projet.
-- 
-- Si vous travaillez sur un poste de l'Istic, le premier username doit
-- correspondre à celui de l'utilisateur qui a ouvert la session Ubuntu.
--
-- Exemples :
--
--   usernames = ["mdupont"]     (pour un seul auteur du projet)
--
--   usernames = ["mdupont", "jdoe"]         (pour deux auteurs)
--

export
usernames : List String
usernames = []

-- ---------------------------------------------------------------------------------
-- Exercices de récursion sur Nat et reprise du TD 4
-- ---------------------------------------------------------------------------------
export
||| La somme des des entiers de 0 à n
||| @ n un entier naturel 
sum : Nat -> Nat -- TODO sum

export
||| Le produit des entiers de 0 à n
||| @ n un entier naturel 
produit0 : Nat -> Nat -- TODO produit0

export
||| Le produit des entiers de 1 à n
||| @ n un entier naturel 
produit1 : Nat -> Nat -- TODO produit1


export
||| Une chaîne de caractères listant tous les nombres de n à 0, séparés par des tirets.
||| Génère une chaîne de caractères représentant le compte à rebours depuis le nombre donné jusqu'à 0.
||| Par exemple, `downTo0 3` produira "3-2-1-0".
||| 
||| @ n Le nombre de départ du compte à rebours (de type Nat).
downTo0 : Nat -> String -- TODO downTo0

export
||| La chaîne popopo...pop, de longueur 2n + 1,
||| et dont le nombre de "po" vaut n.
|||
||| @ n un entier naturel
pop : Nat -> String -- TODO pop

export
||| La chaîne Zzzzzz...z de longueur n, 
||| dont le premier Z est majuscule et les autres minuscules.
|||
||| @ n un entier naturel
dodo : Nat -> String -- TODO dodo

export
||| La chaîne Bla-bla-...-bla commençant par Bla UNE fois, suivi de n bla,
||| séparés par '-'.
|||
||| @ n un entier naturel
blabla : Nat -> String -- TODO blabla

export
||| La chaine énumérant dans l'ordre croissant les n premiers entiers impairs,
||| séparés par des points-virgules. 
|||
||| @ n un entier naturel
|||
||| Exemples : 
|||
|||   impairs 0 = ""
|||   impairs 1 = "1"
|||   impairs 2 = "1;3"
|||   impairs 3 = "1;3;5"
|||   impairs 4 = "1;3;5;7"
|||
impairs : Nat -> String -- TODO impairs


export 
||| replicate n c = la chaine constituée de n fois le caractère c
replicate : Nat -> Char -> String -- TODO replicate

export
||| La chaîne représentant un triangle d'étoiles comme dans les exemples ci-dessous.
|||
||| @ n le nombre de lignes du triangle
|||
||| Exemples : 
||| 
||| n = 0       1       2       3       4
|||             *       *       *       *
|||                     **      **      **
|||                             ***     ***
|||                                     ****
|||
||| Il ne doit pas y avoir de saut de ligne (caractère '\n') avant et après le
||| triangle. En particulier, triangle 0 = "" et triangle 1 = "*".
|||
triangle : Nat -> String -- TODO triangle

export 
||| Idem avec le schéma 
|||
||| diag 3 = 
|||
|||     *
|||      *
|||       *
|||
diag : Nat -> IO () -- TODO diag

export
||| Idem avec le schéma 
|||
||| wedge 3 = 
|||
|||     ***
|||     **
|||     *
|||     **
|||     ***
wedge : Nat -> IO () -- TODO wedge

-- ---------------------------------------------------------------------------------
-- Récursion sur les images
-- ---------------------------------------------------------------------------------
export
||| Nombre de cercles dans une image.
||| Les cercles produits par FCircle sont aussi comptés.
circlesNb : Image -> Nat -- TODO circlesNb

-- ---------------------------------------------------------------------------------
-- Récursion sur les images pour produire des images 
-- ---------------------------------------------------------------------------------
export
||| Remplace les cercles par des carrés de même enveloppe.
|||
||| Pour tester cette fonction, vous devez créer une image img, et visualiser,
||| par exemple, l'image Beside img (circToRec img).
|||
||| Ensuite, vous pourrez également utiliser la fonction demoCircToRec : IO ()
||| dans Main.main. Cette fonction génère une image au hasard et la visualise.
||| En appuyant sur la touche ESPACE, vous pourrez basculer entre sa version
||| originale à et sa version transformée. Fermer la fenêtre de visualisation en
||| ouvre une nouvelle. Il faut taper Ctrl-C dans le terminal pour terminer la
||| démo.
circToRec : Image -> Image -- TODO circToRec


-- ---------------------------------------------------------------------------------
-- Redéfinition des opérateurs booléens
-- ---------------------------------------------------------------------------------
export 
||| Négation
not : Bool -> Bool -- TODO not

export
||| Conjonction
(&&) : Bool -> Lazy Bool -> Bool -- TODO (&&)

export
||| Disjonction
(||) : Bool -> Lazy Bool -> Bool -- TODO (||)

export 
||| Expression dont l'évaluation ne termine pas, à utiliser dans Main.main pour
||| vérifier que (&&) et (||) sont bien paresseux en leur deuxième argument.
bottom : a
bottom = bottom
