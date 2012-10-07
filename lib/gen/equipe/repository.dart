// lib/gen/equipe/repository.dart 
 
class EquipeRepo extends Repo { 
 
  static final equipeDomainCode = "Equipe"; 
  static final equipeFootballModelCode = "Football"; 
 
  EquipeRepo([String code="EquipeRepo"]) : super(code) { 
    _initEquipeDomain(); 
  } 
 
  _initEquipeDomain() { 
    var equipeDomain = new Domain(equipeDomainCode); 
    domains.add(equipeDomain); 
    add(new EquipeModels(equipeDomain)); 
  } 
 
} 
 


