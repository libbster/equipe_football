// lib/equipe/football/joueurs.dart 
 
class Joueur extends JoueurGen { 
 
  Joueur(Concept concept) : super(concept); 
 
  Joueur.withId(Concept concept, int numero) : 
    super.withId(concept, numero); 
 
} 
 
class Joueurs extends JoueursGen { 
 
  Joueurs(Concept concept) : super(concept); 
 
} 
 