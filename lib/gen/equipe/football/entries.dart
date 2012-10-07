// lib/gen/equipe/football/entries.dart 
 
class FootballEntries extends ModelEntries { 
 
  FootballEntries(Model model) : super(model); 
 
  Map<String, Entities> newEntries() { 
    var entries = new Map<String, Entities>(); 
    var concept; 
    concept = model.concepts.findByCode("Equipe"); 
    entries["Equipe"] = new Equipes(concept); 
    return entries; 
  } 
 
  Entities newEntities(String conceptCode) { 
    var concept = model.concepts.findByCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptException("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Equipe") { 
      return new Equipes(concept); 
    } 
    if (concept.code == "Joueur") { 
      return new Joueurs(concept); 
    } 
  } 
 
  ConceptEntity newEntity(String conceptCode) { 
    var concept = model.concepts.findByCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptException("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Equipe") { 
      return new Equipe(concept); 
    } 
    if (concept.code == "Joueur") { 
      return new Joueur(concept); 
    } 
  } 
 
  fromJsonToData() { 
    fromJson(equipeFootballDataJson); 
  } 
 
  Equipes get equipes => getEntry("Equipe"); 
 
} 
 
