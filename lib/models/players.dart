
class Player {
  final String name;
  final int team;
  final int ATT;
  final int DEF;
  int? GATT;
  int? GDEF;
  String? Position;
  PlayerGATT(Position){
    if (Position == "GK" || Position == "CB"){
      return GATT = (ATT * 0.6).toInt();
    }
    else if (Position == "LB" || Position == "RB" || Position == "CDM"){
      return GATT = (ATT * 0.8).toInt();
    }
    else if (Position == "LWB" || Position == "RWB" || Position == "CM"){
      return GATT = (ATT * 1).toInt();
    }
    else if (Position == "LM" || Position == "RM"){
      return GATT = (ATT * 1.2).toInt();
    }
    else if (Position == "LW" || Position == "RW" || Position == "CAM"){
      return GATT = (ATT * 1.3).toInt();
    }
    else if (Position == "ST"){
      return GATT = (ATT * 1.4).toInt();
    }
  } 

  PlayerGDEF(Position){
    if (Position == "GK" || Position == "CB"){
      return GDEF = (DEF * 1.4).toInt();
    }
    else if (Position == "LB" || Position == "RB" || Position == "CDM"){
      return GDEF = (DEF * 1.2).toInt();
    }
    else if (Position == "LWB" || Position == "RWB" || Position == "CM"){
      return GDEF = (DEF * 1).toInt();
    }
    else if (Position == "LM" || Position == "RM"){
      return GDEF = (DEF * 0.8).toInt();
    }
    else if (Position == "LW" || Position == "RW" || Position == "CAM"){
      return GDEF = (DEF * 0.7).toInt();
    }
    else if (Position == "ST"){
      return GDEF = (DEF * 0.6).toInt();
    }
  } 

  Player(this.name, this.team, this.ATT, this.DEF);
}

List<Player> ArgentinaGenerate (List<String> Arg_Players, List<int> Arg_Code, List<int> Arg_ATT, List<int> Arg_DEF){
  List<Player> Gecici = [];
  for(int i = 0;i<11;i++){
    Gecici.add(Player(Arg_Players[i], Arg_Code[i], Arg_ATT[i], Arg_DEF[i]));
  }
  return Gecici;
}

List<Player> PortugalGenerate (List<String> Por_Players, List<int> Por_Code, List<int> Por_ATT, List<int> Por_DEF){
  List<Player> Gecici = [];
  for(int i = 0;i<11;i++){
    Gecici.add(Player(Por_Players[i], Por_Code[i], Por_ATT[i], Por_DEF[i]));
  }
  return Gecici;
}

List<Player> BrasilGenerate (List<String> Bra_Players, List<int> Bra_Code, List<int> Bra_ATT, List<int> Bra_DEF){
  List<Player> Gecici = [];
  for(int i = 0;i<11;i++){
    Gecici.add(Player(Bra_Players[i], Bra_Code[i], Bra_ATT[i], Bra_DEF[i]));
  }
  return Gecici;
}

List<Player> GermanyGenerate (List<String> Ger_Players, List<int> Ger_Code, List<int> Ger_ATT, List<int> Ger_DEF){
  List<Player> Gecici = [];
  for(int i = 0;i<11;i++){
    Gecici.add(Player(Ger_Players[i], Ger_Code[i], Ger_ATT[i], Ger_DEF[i]));
  }
  return Gecici;
}

 List<String> Arg_Players = [
  "Martinez",
  "Otamendi",
  "Romero",
  "Acuna",
  "Molina",
  "Fernandez",
  "de Paul",
  "di Maria",
  "Gomez",
  "Alvarez",
  "Messi"
];

List<int> Arg_Code = List.filled(11, 0);

List<int> Arg_ATT = [
  0,
  55,
  49,
  78,
  75,
  74,
  82,
  86,
  86,
  86,
  96
];

List<int> Arg_DEF = [
  82,
  84,
  80,
  78,
  78,
  81,
  85,
  68,
  52,
  68,
  28,
];


List<String> Por_Players = [
  "Costa",
  "Pepe",
  "Diaz",
  "Cancelo",
  "Dalot",
  "Navas",
  "Bernardo",
  "Crespo",
  "Leao",
  "Bruno",
  "Ronaldo"
];

List<int> Por_Code = List.filled(11, 1);

List<int> Por_ATT = [
  0,
  42,
  66,
  88,
  80,
  78,
  86,
  81,
  88,
  88,
  90
];

List<int> Por_DEF = [
  80,
  82,
  88,
  76,
  80,
  81,
  71,
  84,
  40,
  64,
  29
];

List<String> Bra_Players = [
  "Allison",
  "Marquinhos",
  "T.Silva",
  "A.Sandro",
  "Danilo",
  "Casemiro",
  "Paqueta",
  "Neymar",
  "Vinicous",
  "Raphinha",
  "Richarlison"
];

List<int> Bra_Code = List.filled(11, 2);

List<int> Bra_ATT = [
  0,
  68,
  62,
  80,
  78,
  80,
  84,
  91,
  88,
  84,
  84
];

List<int> Bra_DEF = [
  90,
  88,
  83,
  80,
  80,
  89,
  78,
  32,
  37,
  41,
  38
];



List<String> Ger_Players = [
  "Neuer",
  "Rüdiger",
  "Süle",
  "Raum",
  "Kimmich",
  "İlkay",
  "Goretzka",
  "Musiala",
  "Gnabry",
  "Sané",
  "Müller"
];

List<int> Ger_Code = List.filled(11, 3);

List<int> Ger_ATT = [
  17,
  53,
  48,
  78,
  89,
  87,
  87,
  88,
  87,
  88,
  89
];

List<int> Ger_DEF = [
  92,
  85,
  82,
  79,
  88,
  83,
  86,
  72,
  46,
  35,
  50
];