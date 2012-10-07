// lib/equipe/football/init.dart 
 
initEquipeFootball(var entries) { 
  _initEquipes(entries); 
} 
 
_initEquipes(var entries) { 
  Equipe manunited = new Equipe.withId(entries.equipes.concept, 'United');
  manunited.ville = "Manchester";
  manunited.effectif = 26 ;
  entries.equipes.add(manunited);

} 