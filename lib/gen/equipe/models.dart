// lib/gen/equipe/models.dart 
 
class EquipeModels extends DomainModels { 
 
  EquipeModels(Domain domain) : super(domain) { 
    add(fromJsonToFootballEntries()); 
  } 
 
  FootballEntries fromJsonToFootballEntries() { 
    return new FootballEntries(fromMagicBoxes( 
      equipeFootballModelJson, 
      domain, 
      EquipeRepo.equipeFootballModelCode)); 
  } 
 
} 
 



