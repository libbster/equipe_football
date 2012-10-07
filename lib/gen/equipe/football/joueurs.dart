// lib/gen/equipe/football/joueurs.dart 
 
abstract class JoueurGen extends ConceptEntity<Joueur> { 
 
  JoueurGen(Concept concept) : super.of(concept); 
 
  JoueurGen.withId(Concept concept, int numero) : super.of(concept) { 
    setAttribute("numero", numero); 
  } 
 
  Equipe get equipe => getParent("equipe"); 
  set equipe(Equipe p) => setParent("equipe", p); 
  
  int get numero => getAttribute("numero"); 
  set numero(int a) => setAttribute("numero", a); 
  
  String get nom => getAttribute("nom"); 
  set nom(String a) => setAttribute("nom", a); 
  
  double get poid => getAttribute("poid"); 
  set poid(double a) => setAttribute("poid", a); 
  
  Joueur newEntity() => new Joueur(concept); 
  
  int numeroCompareTo(Joueur other) { 
    return numero.compareTo(other.numero); 
  } 
 
} 
 
abstract class JoueursGen extends Entities<Joueur> { 
 
  JoueursGen(Concept concept) : super.of(concept); 
 
  Joueurs newEntities() => new Joueurs(concept); 
  
} 