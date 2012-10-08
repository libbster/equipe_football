// lib/equipe/football/init.dart 
 
initEquipeFootball(var entries) { 
  _initEquipes(entries); 
} 
 
_initEquipes(var entries) { 
  Equipe manunited = new Equipe.withId(entries.equipes.concept, 'Manchester United');
  manunited.ville = "Manchester";
  manunited.effectif = 26 ;
   
  Joueur nene8 = new Joueur.withId(manunited.joueurs.concept, 8);
  nene8.nom = "Néné";
  nene8.poid = 46.2 ;
  nene8.equipe = manunited;
  
  Joueur diego = new Joueur.withId(manunited.joueurs.concept, 12);
  diego.nom = "Diego Millito";
  diego.poid = 78.6;
  diego.equipe = manunited;
  
  
  Joueur maradona = new Joueur.withId(manunited.joueurs.concept, 47);
  maradona.nom = "Diego Maradona";
  maradona.poid = 98.7 ;
  maradona.equipe = manunited;
 
  manunited.joueurs.add(nene8);
  manunited.joueurs.add(diego);
  manunited.joueurs.add(maradona);
  
  entries.equipes.add(manunited);
  
  Equipe chelsea = new Equipe.withId(entries.equipes.concept, 'Chelsea');
  chelsea.ville = "London";
  chelsea.effectif = 26 ;
  
  Joueur soryba = new Joueur.withId(manunited.joueurs.concept, 22);
  soryba.nom = "Sorry Ba";
  soryba.poid = 47.9;
  soryba.equipe = chelsea;
  
  Joueur ronaldo = new Joueur.withId(manunited.joueurs.concept, 10);
  ronaldo.nom = "Ronaldo";
  ronaldo.poid = 45.8;
  ronaldo.equipe = chelsea;
  
  Joueur messi = new Joueur.withId(manunited.joueurs.concept, 8);
  messi.nom = "Leo Messi";
  messi.poid = 75.8;
  messi.equipe = chelsea;
  
  Joueur zidane = new Joueur.withId(manunited.joueurs.concept, 9);
  zidane.nom = "Zinedine Zindne";
  zidane.poid = 79.4 ;
  zidane.equipe = chelsea;
  
  chelsea.joueurs.add(soryba);
  chelsea.joueurs.add(ronaldo);
  chelsea.joueurs.add(messi);
  chelsea.joueurs.add(zidane);
  
  entries.equipes.add(chelsea);

} 