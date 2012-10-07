// lib/gen/equipe/football/equipes.dart 
 
abstract class EquipeGen extends ConceptEntity<Equipe> { 
 
  EquipeGen(Concept concept) : super.of(concept) { 
    Concept joueurConcept = concept.model.concepts.findByCode("Joueur"); 
    setChild("joueurs", new Joueurs(joueurConcept)); 
  } 
 
  EquipeGen.withId(Concept concept, String nom) : super.of(concept) { 
    setAttribute("nom", nom); 
    Concept joueurConcept = concept.model.concepts.findByCode("Joueur"); 
    setChild("joueurs", new Joueurs(joueurConcept)); 
  } 
 
  String get nom => getAttribute("nom"); 
  set nom(String a) => setAttribute("nom", a); 
  
  String get ville => getAttribute("ville"); 
  set ville(String a) => setAttribute("ville", a); 
  
  int get effectif => getAttribute("effectif"); 
  set effectif(int a) => setAttribute("effectif", a); 
  
  Joueurs get joueurs => getChild("joueurs"); 
  
  Equipe newEntity() => new Equipe(concept); 
  
  int nomCompareTo(Equipe other) { 
    return nom.compareTo(other.nom); 
  } 
 
} 
 
abstract class EquipesGen extends Entities<Equipe> { 
 
  EquipesGen(Concept concept) : super.of(concept); 
 
  Equipes newEntities() => new Equipes(concept); 
  
} 
 
