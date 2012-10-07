// lib/equipe/football/equipes.dart 
 
class Equipe extends EquipeGen { 
 
  Equipe(Concept concept) : super(concept); 
 
  Equipe.withId(Concept concept, String nom) : 
    super.withId(concept, nom); 
 
} 
 
class Equipes extends EquipesGen { 
 
  Equipes(Concept concept) : super(concept); 
 
} 
 
