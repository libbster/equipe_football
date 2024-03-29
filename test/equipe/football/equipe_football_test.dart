// test/equipe/football/equipe_football_test.dart 
 
#import("package:unittest/unittest.dart"); 
 
#import("package:dartling/dartling.dart"); 
 
#import("package:equipe_football/equipe_football.dart"); 
 
testEquipeFootball(Repo repo, String domainCode, String modelCode) { 
  var models; 
  var session; 
  var entries; 
  group("Testing ${domainCode}.${modelCode}", () { 
    setUp(() { 
      models = repo.getDomainModels(domainCode); 
      session = models.newSession(); 
      entries = models.getModelEntries(modelCode); 
      expect(entries, isNotNull); 
 
 
    }); 
    tearDown(() { 
      entries.clear(); 
    }); 
    test("Empty Entries Test", () { 
      expect(entries.empty, isTrue); 
    }); 
 
  }); 
} 
 
testEquipeData(EquipeRepo equipeRepo) { 
  testEquipeFootball(equipeRepo, EquipeRepo.equipeDomainCode, 
      EquipeRepo.equipeFootballModelCode); 
} 
 
void main() { 
  var equipeRepo = new EquipeRepo(); 
  testEquipeData(equipeRepo); 
} 
 

