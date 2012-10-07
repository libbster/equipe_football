// test/equipe/football/equipe_football_gen.dart 
 
#import("dart:json"); 
#import("dart:math"); 
#import("dart:uri"); 
 
#import("package:dartling/dartling.dart"); 
 
#import("package:equipe_football/equipe_football.dart"); 
 
genCode() { 
  var repo = new Repo(); 
 
  // change "Dartling" to "YourDomainName" 
  var equipeDomain = new Domain("Equipe"); 
 
  // change dartling to yourDomainName 
  // change Skeleton to YourModelName 
  // change "Skeleton" to "YourModelName" 
  Model equipeFootballModel = 
      fromMagicBoxes(equipeFootballModelJson, equipeDomain, "Football"); 
 
  repo.domains.add(equipeDomain); 
 
  repo.gen(); 
} 
 
initEquipeData(EquipeRepo equipeRepo) { 
   var equipeModels = 
       equipeRepo.getDomainModels(EquipeRepo.equipeDomainCode); 
 
   var equipeFootballEntries = 
       equipeModels.getModelEntries(EquipeRepo.equipeFootballModelCode); 
   initEquipeFootball(equipeFootballEntries); 
   equipeFootballEntries.display(); 
   equipeFootballEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var equipeRepo = new EquipeRepo(); 
  initEquipeData(equipeRepo); 
} 
 
