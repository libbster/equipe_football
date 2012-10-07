// web/equipe/football/equipe_football_web.dart 
 
#import("dart:html"); 
 
#import("package:dartling/dartling.dart"); 
#import("package:dartling/dartling_app.dart"); 
 
#import("package:equipe_football/equipe_football.dart"); 
 
initEquipeData(EquipeRepo equipeRepo) { 
   var equipeModels = 
       equipeRepo.getDomainModels(EquipeRepo.equipeDomainCode); 
 
   var equipeFootballEntries = 
       equipeModels.getModelEntries(EquipeRepo.equipeFootballModelCode); 
   initEquipeFootball(equipeFootballEntries); 
   equipeFootballEntries.display(); 
   equipeFootballEntries.displayJson(); 
} 
 
showEquipeData(EquipeRepo equipeRepo) { 
   var mainView = new View(document, "main"); 
   mainView.repo = equipeRepo; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var equipeRepo = new EquipeRepo(); 
  initEquipeData(equipeRepo); 
  showEquipeData(equipeRepo); 
} 
 

