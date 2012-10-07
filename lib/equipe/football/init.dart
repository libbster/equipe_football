// lib/equipe/football/init.dart 
 
initEquipeFootball(var entries) { 
  _initEquipes(entries); 
} 
 
_initEquipes(var entries) { 
  Equipe manunited = new Equipe.withId(entries.equipes.concept, 'Manchester United');
  manunited.ville = "Manchester";
  manunited.effectif = 26 ;
  entries.equipes.add(manunited);
  
  Equipe chelsea = new Equipe.withId(entries.equipes.concept, 'Chelsea');
  chelsea.ville = "London";
  chelsea.effectif = 26 ;
  entries.equipes.add(chelsea);

} 