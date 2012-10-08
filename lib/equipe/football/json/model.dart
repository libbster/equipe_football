
// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// rename dartling to yourDomainName
// rename Skeleton to YourModelName
// do not change model or Model

// lib/dartling/skeleton/json/model.dart

var equipeFootballModelJson = @'''
{
   "width":990,
   "lines":[
      {
         "box1Name":"Equipe",
         "category":"relationship",
         "internal":true,
         "box2box1Id":false,
         "box1box2Name":"joueurs",
         "box1box2Min":"0",
         "box2Name":"Joueur",
         "box1box2Max":"N",
         "box2box1Name":"equipe",
         "box2box1Min":"1",
         "box2box1Max":"1",
         "box1box2Id":false
      }
   ],
   "height":580,
   "boxes":[
      {
         "name":"Equipe",
         "x":347,
         "height":100,
         "y":347,
         "entry":true,
         "width":100,
         "items":[
            {
               "sequence":10,
               "name":"nom",
               "category":"identifier",
               "type":"String",
               "init":""
            },
            {
               "sequence":20,
               "name":"ville",
               "category":"attribute",
               "type":"String",
               "init":""
            },
            {
               "sequence":30,
               "name":"effectif",
               "category":"attribute",
               "type":"int",
               "init":""
            }
         ]
      },
      {
         "name":"Joueur",
         "x":670,
         "height":100,
         "y":440,
         "entry":false,
         "width":100,
         "items":[
            {
               "sequence":10,
               "name":"numero",
               "category":"identifier",
               "type":"int",
               "init":""
            },
            {
               "sequence":20,
               "name":"nom",
               "category":"required",
              "type":"String",
               "init":""
            },
            {
               "sequence":30,
               "name":"poid",
               "category":"attribute",
               "type":"double",
               "init":""
            }
         ]
      }
   ]
}''';