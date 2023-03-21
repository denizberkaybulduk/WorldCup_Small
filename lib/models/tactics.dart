import 'package:flutter/material.dart';
import 'players.dart';

List<Player> Argentina =
    ArgentinaGenerate(Arg_Players, Arg_Code, Arg_ATT, Arg_DEF);
List<Player> Portugal =
    PortugalGenerate(Por_Players, Por_Code, Por_ATT, Por_DEF);
List<Player> Brasil = BrasilGenerate(Bra_Players, Bra_Code, Bra_ATT, Bra_DEF);

List<Player> Germany = GermanyGenerate(Ger_Players, Ger_Code, Ger_ATT, Ger_DEF);



class formationGermany extends StatefulWidget {
  formationGermany({
    Key? key,
  }) : super(key: key);

  @override
  State<formationGermany> createState() => _formationGermanyState();
}

class _formationGermanyState extends State<formationGermany> {
  String PosGK = "GK";
  String GKdata = "-";

  String PosLB = "LB";
  String LBdata = "-";

  String PosCB1 = "CB";
  String CB1data = "-";

  String PosCB2 = "CB";
  String CB2data = "-";

  String PosCB3 = "CB";
  String CB3data = "-";

  String PosRB = "RB";
  String RBdata = "-";

  String PosLWB = "LWB";
  String LWBdata = "-";

  String PosCDM1 = "CDM";
  String CDM1data = "-";

  String PosCDM2 = "CDM";
  String CDM2data = "-";

  String PosCDM3 = "CDM";
  String CDM3data = "-";

  String PosRWB = "RWB";
  String RWBdata = "-";

  String PosLM = "LM";
  String LMdata = "-";

  String PosCM1 = "CM";
  String CM1data = "-";

  String PosCM2 = "CM";
  String CM2data = "-";

  String PosCM3 = "CM";
  String CM3data = "-";

  String PosRM = "RM";
  String RMdata = "-";

  String PosLM1 = "LM";
  String LM1data = "-";

  String PosCM4 = "CM";
  String CM4data = "-";

  String PosCM5 = "CM";
  String CM5data = "-";

  String PosCM6 = "CM";
  String CM6data = "-";

  String PosRM1 = "RM";
  String RM1data = "-";

  String PosLW = "LW";
  String LWdata = "-";

  String PosCAM1 = "CAM";
  String CAM1data = "-";

  String PosCAM2 = "CAM";
  String CAM2data = "-";

  String PosCAM3 = "CAM";
  String CAM3data = "-";

  String PosRW = "RW";
  String RWdata = "-";

  String PosLW1 = "LW";
  String LW1data = "-";

  String PosST1 = "ST";
  String ST1data = "-";

  String PosST2 = "ST";
  String ST2data = "-";

  String PosST3 = "ST";
  String ST3data = "-";

  String PosRW1 = "RW";
  String RW1data = "-";

  Color color1 = Color.fromARGB(255, 2, 182, 164);
  Color color2 = Colors.white;

  Color color10 = Color.fromARGB(255, 2, 182, 164);
  Color color11 = Color.fromARGB(255, 2, 182, 164);
  Color color12 = Color.fromARGB(255, 2, 182, 164);
  Color color13 = Color.fromARGB(255, 2, 182, 164);
  Color color14 = Color.fromARGB(255, 2, 182, 164);
  Color color15 = Color.fromARGB(255, 2, 182, 164);
  Color color16 = Color.fromARGB(255, 2, 182, 164);
  Color color17 = Color.fromARGB(255, 2, 182, 164);
  Color color18 = Color.fromARGB(255, 2, 182, 164);
  Color color19 = Color.fromARGB(255, 2, 182, 164);
  Color color20 = Color.fromARGB(255, 2, 182, 164);
  Color color21 = Color.fromARGB(255, 2, 182, 164);
  Color color22 = Color.fromARGB(255, 2, 182, 164);
  Color color23 = Color.fromARGB(255, 2, 182, 164);
  Color color24 = Color.fromARGB(255, 2, 182, 164);
  Color color25 = Color.fromARGB(255, 2, 182, 164);
  Color color26 = Color.fromARGB(255, 2, 182, 164);
  Color color27 = Color.fromARGB(255, 2, 182, 164);
  Color color28 = Color.fromARGB(255, 2, 182, 164);
  Color color29 = Color.fromARGB(255, 2, 182, 164);
  Color color30 = Color.fromARGB(255, 2, 182, 164);
  Color color31 = Color.fromARGB(255, 2, 182, 164);
  Color color32 = Color.fromARGB(255, 2, 182, 164);
  Color color33 = Color.fromARGB(255, 2, 182, 164);
  Color color34 = Color.fromARGB(255, 2, 182, 164);
  Color color35 = Color.fromARGB(255, 2, 182, 164);
  Color color36 = Color.fromARGB(255, 2, 182, 164);
  Color color37 = Color.fromARGB(255, 2, 182, 164);
  Color color38 = Color.fromARGB(255, 2, 182, 164);
  Color color39 = Color.fromARGB(255, 2, 182, 164);
  Color color40 = Color.fromARGB(255, 2, 182, 164);







  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
              height: MediaQuery.of(context).size.height * 5 / 7,
              width: MediaQuery.of(context).size.width * 7 / 7,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLW1, PlayerData: LW1data, color1: color36);
                      }, onAccept: (Player player) {
                        setState(() {
                          color36 = color2;
                          PosLW1 = player.name;
                          LW1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST1, PlayerData: ST1data, color1: color37);
                      }, onAccept: (Player player) {
                        setState(() {
                          color37 = color2;
                          PosST1 = player.name;
                          ST1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST2, PlayerData: ST2data, color1: color38);
                      }, onAccept: (Player player) {
                        setState(() {
                          color38 = color2;
                          PosST2 = player.name;
                          ST2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST3, PlayerData: ST3data, color1: color39);
                      }, onAccept: (Player player) {
                        setState(() {
                          color39 = color2;
                          PosST3 = player.name;
                          ST3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRW1, PlayerData: RW1data, color1: color40);
                      }, onAccept: (Player player) {
                        setState(() {
                          color40 = color2;
                          PosRW1 = player.name;
                          RW1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLW, PlayerData: LWdata, color1: color31);
                      }, onAccept: (Player player) {
                        setState(() {
                          color31 = color2;
                          PosLW = player.name;
                          LWdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM1, PlayerData: CAM1data, color1: color32);
                      }, onAccept: (Player player) {
                        setState(() {
                          color32 = color2;
                          PosCAM1 = player.name;
                          CAM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM2, PlayerData: CAM2data, color1: color33);
                      }, onAccept: (Player player) {
                        setState(() {
                          color33 = color2;
                          PosCAM2 = player.name;
                          CAM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM3, PlayerData: CAM3data, color1: color34);
                      }, onAccept: (Player player) {
                        setState(() {
                          color34 = color2;
                          PosCAM3 = player.name;
                          CAM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRW, PlayerData: RWdata, color1: color35);
                      }, onAccept: (Player player) {
                        setState(() {
                          color35 = color2;
                          PosRW = player.name;
                          RWdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLM1, PlayerData: LM1data, color1: color26);
                      }, onAccept: (Player player) {
                        setState(() {
                          color26 = color2;
                          PosLM1 = player.name;
                          LM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM4, PlayerData: CM4data, color1: color27);
                      }, onAccept: (Player player) {
                        setState(() {
                          color27 = color2;
                          PosCM4 = player.name;
                          CM4data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM5, PlayerData: CM5data, color1: color28);
                      }, onAccept: (Player player) {
                        setState(() {
                          color28 = color2;
                          PosCM5 = player.name;
                          CM5data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM6, PlayerData: CM6data, color1: color29);
                      }, onAccept: (Player player) {
                        setState(() {
                          color29 = color2;
                          PosCM6 = player.name;
                          CM6data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRM1, PlayerData: RM1data, color1: color30);
                      }, onAccept: (Player player) {
                        setState(() {
                          color30 = color2;
                          PosRM1 = player.name;
                          RM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLM, PlayerData: LMdata, color1: color21);
                      }, onAccept: (Player player) {
                        setState(() {
                          color21 = color2;
                          PosLM = player.name;
                          LMdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM1, PlayerData: CM1data, color1: color22);
                      }, onAccept: (Player player) {
                        setState(() {
                          color22 = color2;
                          PosCM1 = player.name;
                          CM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM2, PlayerData: CM2data, color1: color23);
                      }, onAccept: (Player player) {
                        setState(() {
                          color23 = color2;
                          PosCM2 = player.name;
                          CM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM3, PlayerData: CM3data, color1: color24);
                      }, onAccept: (Player player) {
                        setState(() {
                          color24 = color2;
                          PosCM3 = player.name;
                          CM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRM, PlayerData: RMdata, color1: color25);
                      }, onAccept: (Player player) {
                        setState(() {
                          color25 = color2;
                          PosRM = player.name;
                          RMdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLWB, PlayerData: LWBdata, color1: color16);
                      }, onAccept: (Player player) {
                        setState(() {
                          color16 = color2;
                          PosLWB = player.name;
                          LWBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM1, PlayerData: CDM1data, color1: color17);
                      }, onAccept: (Player player) {
                        setState(() {
                          color17 = color2;
                          PosCDM1 = player.name;
                          CDM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM2, PlayerData: CDM2data, color1: color18);
                      }, onAccept: (Player player) {
                        setState(() {
                          color18 = color2;
                          PosCDM2 = player.name;
                          CDM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM3, PlayerData: CDM3data, color1: color19);
                      }, onAccept: (Player player) {
                        setState(() {
                          color19 = color2;
                          PosCDM3 = player.name;
                          CDM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRWB, PlayerData: RWBdata, color1: color20);
                      }, onAccept: (Player player) {
                        setState(() {
                          color20 = color2;
                          PosRWB = player.name;
                          RWBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),




                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLB, PlayerData: LBdata, color1: color11);
                      }, onAccept: (Player player) {
                        setState(() {
                          color11 = color2;
                          PosLB = player.name;
                          LBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB1, PlayerData: CB1data, color1: color12);
                      }, onAccept: (Player player) {
                        setState(() {
                          color12 = color2;
                          PosCB1 = player.name;
                          CB1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB2, PlayerData: CB2data, color1: color13);
                      }, onAccept: (Player player) {
                        setState(() {
                          color13 = color2;
                          PosCB2 = player.name;
                          CB2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB3, PlayerData: CB3data, color1: color14);
                      }, onAccept: (Player player) {
                        setState(() {
                          color14 = color2;
                          PosCB3 = player.name;
                          CB3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRB, PlayerData: RBdata, color1: color15);
                      }, onAccept: (Player player) {
                        setState(() {
                          color15 = color2;
                          PosRB = player.name;
                          RBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosGK, PlayerData: GKdata, color1: color10,);
                      }, onAccept: (Player player) {
                        setState(() {
                          color10 = color2;
                          PosGK = player.name;
                          GKdata = "${player.ATT} ${player.DEF}";
                        });
                        
                      }),

                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                    ],
                  ),
                ],
              )),













          Container(
              height: MediaQuery.of(context).size.height * 2 / 7,
              width: MediaQuery.of(context).size.width * 7 / 7,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      Draggable(
                        data: Germany[0],
                        feedback: Material(child: PlayerChart(player: Germany[0])),
                        child: PlayerChart(player: Germany[0]),
                      ),
                      Draggable(
                        data: Germany[1],
                        feedback: Material(child: PlayerChart(player: Germany[1])),
                        child: PlayerChart(player: Germany[1]),
                      ),
                      Draggable(
                        data: Germany[2],
                        feedback: Material(child: PlayerChart(player: Germany[2])),
                        child: PlayerChart(player: Germany[2]),
                      ),
                      Draggable(
                        data: Germany[3],
                        feedback: Material(child: PlayerChart(player: Germany[3])),
                        child: PlayerChart(player: Germany[3]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Draggable(
                        data: Germany[4],
                        feedback: Material(child: PlayerChart(player: Germany[4])),
                        child: PlayerChart(player: Germany[4]),
                      ),
                      Draggable(
                        data: Germany[5],
                        feedback: Material(child: PlayerChart(player: Germany[5])),
                        child: PlayerChart(player: Germany[5]),
                      ),
                      Draggable(
                        data: Germany[6],
                        feedback: Material(child: PlayerChart(player: Germany[6])),
                        child: PlayerChart(player: Germany[6]),
                      ),
                      Draggable(
                        data: Germany[7],
                        feedback: Material(child: PlayerChart(player: Germany[7])),
                        child: PlayerChart(player: Germany[7]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Draggable(
                        data: Germany[8],
                        feedback: Material(child: PlayerChart(player: Germany[8])),
                        child: PlayerChart(player: Germany[8]),
                      ),
                      Draggable(
                        data: Germany[9],
                        feedback: Material(child: PlayerChart(player: Germany[9])),
                        child: PlayerChart(player: Germany[9]),
                      ),
                      Draggable(
                        data: Germany[10],
                        feedback: Material(child: PlayerChart(player: Germany[10])),
                        child: PlayerChart(player: Germany[10]),
                      ),
                      
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 2 / 7 * 1 / 3,
                        width: MediaQuery.of(context).size.width * 1 / 4,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ]));
  }
}


class formationPortugal extends StatefulWidget {
  formationPortugal({
    Key? key,
  }) : super(key: key);

  @override
  State<formationPortugal> createState() => _formationPortugalState();
}

class _formationPortugalState extends State<formationPortugal> {
  String PosGK = "GK";
  String GKdata = "-";

  String PosLB = "LB";
  String LBdata = "-";

  String PosCB1 = "CB";
  String CB1data = "-";

  String PosCB2 = "CB";
  String CB2data = "-";

  String PosCB3 = "CB";
  String CB3data = "-";

  String PosRB = "RB";
  String RBdata = "-";

  String PosLWB = "LWB";
  String LWBdata = "-";

  String PosCDM1 = "CDM";
  String CDM1data = "-";

  String PosCDM2 = "CDM";
  String CDM2data = "-";

  String PosCDM3 = "CDM";
  String CDM3data = "-";

  String PosRWB = "RWB";
  String RWBdata = "-";

  String PosLM = "LM";
  String LMdata = "-";

  String PosCM1 = "CM";
  String CM1data = "-";

  String PosCM2 = "CM";
  String CM2data = "-";

  String PosCM3 = "CM";
  String CM3data = "-";

  String PosRM = "RM";
  String RMdata = "-";

  String PosLM1 = "LM";
  String LM1data = "-";

  String PosCM4 = "CM";
  String CM4data = "-";

  String PosCM5 = "CM";
  String CM5data = "-";

  String PosCM6 = "CM";
  String CM6data = "-";

  String PosRM1 = "RM";
  String RM1data = "-";

  String PosLW = "LW";
  String LWdata = "-";

  String PosCAM1 = "CAM";
  String CAM1data = "-";

  String PosCAM2 = "CAM";
  String CAM2data = "-";

  String PosCAM3 = "CAM";
  String CAM3data = "-";

  String PosRW = "RW";
  String RWdata = "-";

  String PosLW1 = "LW";
  String LW1data = "-";

  String PosST1 = "ST";
  String ST1data = "-";

  String PosST2 = "ST";
  String ST2data = "-";

  String PosST3 = "ST";
  String ST3data = "-";

  String PosRW1 = "RW";
  String RW1data = "-";

  Color color1 = Color.fromARGB(255, 2, 182, 164);
  Color color2 = Colors.white;

  Color color10 = Color.fromARGB(255, 2, 182, 164);
  Color color11 = Color.fromARGB(255, 2, 182, 164);
  Color color12 = Color.fromARGB(255, 2, 182, 164);
  Color color13 = Color.fromARGB(255, 2, 182, 164);
  Color color14 = Color.fromARGB(255, 2, 182, 164);
  Color color15 = Color.fromARGB(255, 2, 182, 164);
  Color color16 = Color.fromARGB(255, 2, 182, 164);
  Color color17 = Color.fromARGB(255, 2, 182, 164);
  Color color18 = Color.fromARGB(255, 2, 182, 164);
  Color color19 = Color.fromARGB(255, 2, 182, 164);
  Color color20 = Color.fromARGB(255, 2, 182, 164);
  Color color21 = Color.fromARGB(255, 2, 182, 164);
  Color color22 = Color.fromARGB(255, 2, 182, 164);
  Color color23 = Color.fromARGB(255, 2, 182, 164);
  Color color24 = Color.fromARGB(255, 2, 182, 164);
  Color color25 = Color.fromARGB(255, 2, 182, 164);
  Color color26 = Color.fromARGB(255, 2, 182, 164);
  Color color27 = Color.fromARGB(255, 2, 182, 164);
  Color color28 = Color.fromARGB(255, 2, 182, 164);
  Color color29 = Color.fromARGB(255, 2, 182, 164);
  Color color30 = Color.fromARGB(255, 2, 182, 164);
  Color color31 = Color.fromARGB(255, 2, 182, 164);
  Color color32 = Color.fromARGB(255, 2, 182, 164);
  Color color33 = Color.fromARGB(255, 2, 182, 164);
  Color color34 = Color.fromARGB(255, 2, 182, 164);
  Color color35 = Color.fromARGB(255, 2, 182, 164);
  Color color36 = Color.fromARGB(255, 2, 182, 164);
  Color color37 = Color.fromARGB(255, 2, 182, 164);
  Color color38 = Color.fromARGB(255, 2, 182, 164);
  Color color39 = Color.fromARGB(255, 2, 182, 164);
  Color color40 = Color.fromARGB(255, 2, 182, 164);







  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
              height: MediaQuery.of(context).size.height * 5 / 7,
              width: MediaQuery.of(context).size.width * 7 / 7,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLW1, PlayerData: LW1data, color1: color36);
                      }, onAccept: (Player player) {
                        setState(() {
                          color36 = color2;
                          PosLW1 = player.name;
                          LW1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST1, PlayerData: ST1data, color1: color37);
                      }, onAccept: (Player player) {
                        setState(() {
                          color37 = color2;
                          PosST1 = player.name;
                          ST1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST2, PlayerData: ST2data, color1: color38);
                      }, onAccept: (Player player) {
                        setState(() {
                          color38 = color2;
                          PosST2 = player.name;
                          ST2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST3, PlayerData: ST3data, color1: color39);
                      }, onAccept: (Player player) {
                        setState(() {
                          color39 = color2;
                          PosST3 = player.name;
                          ST3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRW1, PlayerData: RW1data, color1: color40);
                      }, onAccept: (Player player) {
                        setState(() {
                          color40 = color2;
                          PosRW1 = player.name;
                          RW1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLW, PlayerData: LWdata, color1: color31);
                      }, onAccept: (Player player) {
                        setState(() {
                          color31 = color2;
                          PosLW = player.name;
                          LWdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM1, PlayerData: CAM1data, color1: color32);
                      }, onAccept: (Player player) {
                        setState(() {
                          color32 = color2;
                          PosCAM1 = player.name;
                          CAM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM2, PlayerData: CAM2data, color1: color33);
                      }, onAccept: (Player player) {
                        setState(() {
                          color33 = color2;
                          PosCAM2 = player.name;
                          CAM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM3, PlayerData: CAM3data, color1: color34);
                      }, onAccept: (Player player) {
                        setState(() {
                          color34 = color2;
                          PosCAM3 = player.name;
                          CAM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRW, PlayerData: RWdata, color1: color35);
                      }, onAccept: (Player player) {
                        setState(() {
                          color35 = color2;
                          PosRW = player.name;
                          RWdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLM1, PlayerData: LM1data, color1: color26);
                      }, onAccept: (Player player) {
                        setState(() {
                          color26 = color2;
                          PosLM1 = player.name;
                          LM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM4, PlayerData: CM4data, color1: color27);
                      }, onAccept: (Player player) {
                        setState(() {
                          color27 = color2;
                          PosCM4 = player.name;
                          CM4data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM5, PlayerData: CM5data, color1: color28);
                      }, onAccept: (Player player) {
                        setState(() {
                          color28 = color2;
                          PosCM5 = player.name;
                          CM5data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM6, PlayerData: CM6data, color1: color29);
                      }, onAccept: (Player player) {
                        setState(() {
                          color29 = color2;
                          PosCM6 = player.name;
                          CM6data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRM1, PlayerData: RM1data, color1: color30);
                      }, onAccept: (Player player) {
                        setState(() {
                          color30 = color2;
                          PosRM1 = player.name;
                          RM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLM, PlayerData: LMdata, color1: color21);
                      }, onAccept: (Player player) {
                        setState(() {
                          color21 = color2;
                          PosLM = player.name;
                          LMdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM1, PlayerData: CM1data, color1: color22);
                      }, onAccept: (Player player) {
                        setState(() {
                          color22 = color2;
                          PosCM1 = player.name;
                          CM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM2, PlayerData: CM2data, color1: color23);
                      }, onAccept: (Player player) {
                        setState(() {
                          color23 = color2;
                          PosCM2 = player.name;
                          CM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM3, PlayerData: CM3data, color1: color24);
                      }, onAccept: (Player player) {
                        setState(() {
                          color24 = color2;
                          PosCM3 = player.name;
                          CM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRM, PlayerData: RMdata, color1: color25);
                      }, onAccept: (Player player) {
                        setState(() {
                          color25 = color2;
                          PosRM = player.name;
                          RMdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLWB, PlayerData: LWBdata, color1: color16);
                      }, onAccept: (Player player) {
                        setState(() {
                          color16 = color2;
                          PosLWB = player.name;
                          LWBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM1, PlayerData: CDM1data, color1: color17);
                      }, onAccept: (Player player) {
                        setState(() {
                          color17 = color2;
                          PosCDM1 = player.name;
                          CDM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM2, PlayerData: CDM2data, color1: color18);
                      }, onAccept: (Player player) {
                        setState(() {
                          color18 = color2;
                          PosCDM2 = player.name;
                          CDM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM3, PlayerData: CDM3data, color1: color19);
                      }, onAccept: (Player player) {
                        setState(() {
                          color19 = color2;
                          PosCDM3 = player.name;
                          CDM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRWB, PlayerData: RWBdata, color1: color20);
                      }, onAccept: (Player player) {
                        setState(() {
                          color20 = color2;
                          PosRWB = player.name;
                          RWBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),




                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLB, PlayerData: LBdata, color1: color11);
                      }, onAccept: (Player player) {
                        setState(() {
                          color11 = color2;
                          PosLB = player.name;
                          LBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB1, PlayerData: CB1data, color1: color12);
                      }, onAccept: (Player player) {
                        setState(() {
                          color12 = color2;
                          PosCB1 = player.name;
                          CB1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB2, PlayerData: CB2data, color1: color13);
                      }, onAccept: (Player player) {
                        setState(() {
                          color13 = color2;
                          PosCB2 = player.name;
                          CB2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB3, PlayerData: CB3data, color1: color14);
                      }, onAccept: (Player player) {
                        setState(() {
                          color14 = color2;
                          PosCB3 = player.name;
                          CB3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRB, PlayerData: RBdata, color1: color15);
                      }, onAccept: (Player player) {
                        setState(() {
                          color15 = color2;
                          PosRB = player.name;
                          RBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosGK, PlayerData: GKdata, color1: color10,);
                      }, onAccept: (Player player) {
                        setState(() {
                          color10 = color2;
                          PosGK = player.name;
                          GKdata = "${player.ATT} ${player.DEF}";
                        });
                        
                      }),

                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                    ],
                  ),
                ],
              )),













          Container(
              height: MediaQuery.of(context).size.height * 2 / 7,
              width: MediaQuery.of(context).size.width * 7 / 7,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      Draggable(
                        data: Portugal[0],
                        feedback: Material(child: PlayerChart(player: Portugal[0])),
                        child: PlayerChart(player: Portugal[0]),
                      ),
                      Draggable(
                        data: Portugal[1],
                        feedback: Material(child: PlayerChart(player: Portugal[1])),
                        child: PlayerChart(player: Portugal[1]),
                      ),
                      Draggable(
                        data: Portugal[2],
                        feedback: Material(child: PlayerChart(player: Portugal[2])),
                        child: PlayerChart(player: Portugal[2]),
                      ),
                      Draggable(
                        data: Portugal[3],
                        feedback: Material(child: PlayerChart(player: Portugal[3])),
                        child: PlayerChart(player: Portugal[3]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Draggable(
                        data: Portugal[4],
                        feedback: Material(child: PlayerChart(player: Portugal[4])),
                        child: PlayerChart(player: Portugal[4]),
                      ),
                      Draggable(
                        data: Portugal[5],
                        feedback: Material(child: PlayerChart(player: Portugal[5])),
                        child: PlayerChart(player: Portugal[5]),
                      ),
                      Draggable(
                        data: Portugal[6],
                        feedback: Material(child: PlayerChart(player: Portugal[6])),
                        child: PlayerChart(player: Portugal[6]),
                      ),
                      Draggable(
                        data: Portugal[7],
                        feedback: Material(child: PlayerChart(player: Portugal[7])),
                        child: PlayerChart(player: Portugal[7]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Draggable(
                        data: Portugal[8],
                        feedback: Material(child: PlayerChart(player: Portugal[8])),
                        child: PlayerChart(player: Portugal[8]),
                      ),
                      Draggable(
                        data: Portugal[9],
                        feedback: Material(child: PlayerChart(player: Portugal[9])),
                        child: PlayerChart(player: Portugal[9]),
                      ),
                      Draggable(
                        data: Portugal[10],
                        feedback: Material(child: PlayerChart(player: Portugal[10])),
                        child: PlayerChart(player: Portugal[10]),
                      ),
                      
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 2 / 7 * 1 / 3,
                        width: MediaQuery.of(context).size.width * 1 / 4,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ]));
  }
}


class formationArgentina extends StatefulWidget {
  formationArgentina({
    Key? key,
  }) : super(key: key);

  @override
  State<formationArgentina> createState() => _formationArgentinaState();
}

class _formationArgentinaState extends State<formationArgentina> {
  String PosGK = "GK";
  String GKdata = "-";

  String PosLB = "LB";
  String LBdata = "-";

  String PosCB1 = "CB";
  String CB1data = "-";

  String PosCB2 = "CB";
  String CB2data = "-";

  String PosCB3 = "CB";
  String CB3data = "-";

  String PosRB = "RB";
  String RBdata = "-";

  String PosLWB = "LWB";
  String LWBdata = "-";

  String PosCDM1 = "CDM";
  String CDM1data = "-";

  String PosCDM2 = "CDM";
  String CDM2data = "-";

  String PosCDM3 = "CDM";
  String CDM3data = "-";

  String PosRWB = "RWB";
  String RWBdata = "-";

  String PosLM = "LM";
  String LMdata = "-";

  String PosCM1 = "CM";
  String CM1data = "-";

  String PosCM2 = "CM";
  String CM2data = "-";

  String PosCM3 = "CM";
  String CM3data = "-";

  String PosRM = "RM";
  String RMdata = "-";

  String PosLM1 = "LM";
  String LM1data = "-";

  String PosCM4 = "CM";
  String CM4data = "-";

  String PosCM5 = "CM";
  String CM5data = "-";

  String PosCM6 = "CM";
  String CM6data = "-";

  String PosRM1 = "RM";
  String RM1data = "-";

  String PosLW = "LW";
  String LWdata = "-";

  String PosCAM1 = "CAM";
  String CAM1data = "-";

  String PosCAM2 = "CAM";
  String CAM2data = "-";

  String PosCAM3 = "CAM";
  String CAM3data = "-";

  String PosRW = "RW";
  String RWdata = "-";

  String PosLW1 = "LW";
  String LW1data = "-";

  String PosST1 = "ST";
  String ST1data = "-";

  String PosST2 = "ST";
  String ST2data = "-";

  String PosST3 = "ST";
  String ST3data = "-";

  String PosRW1 = "RW";
  String RW1data = "-";

  Color color1 = Color.fromARGB(255, 2, 182, 164);
  Color color2 = Colors.white;

  Color color10 = Color.fromARGB(255, 2, 182, 164);
  Color color11 = Color.fromARGB(255, 2, 182, 164);
  Color color12 = Color.fromARGB(255, 2, 182, 164);
  Color color13 = Color.fromARGB(255, 2, 182, 164);
  Color color14 = Color.fromARGB(255, 2, 182, 164);
  Color color15 = Color.fromARGB(255, 2, 182, 164);
  Color color16 = Color.fromARGB(255, 2, 182, 164);
  Color color17 = Color.fromARGB(255, 2, 182, 164);
  Color color18 = Color.fromARGB(255, 2, 182, 164);
  Color color19 = Color.fromARGB(255, 2, 182, 164);
  Color color20 = Color.fromARGB(255, 2, 182, 164);
  Color color21 = Color.fromARGB(255, 2, 182, 164);
  Color color22 = Color.fromARGB(255, 2, 182, 164);
  Color color23 = Color.fromARGB(255, 2, 182, 164);
  Color color24 = Color.fromARGB(255, 2, 182, 164);
  Color color25 = Color.fromARGB(255, 2, 182, 164);
  Color color26 = Color.fromARGB(255, 2, 182, 164);
  Color color27 = Color.fromARGB(255, 2, 182, 164);
  Color color28 = Color.fromARGB(255, 2, 182, 164);
  Color color29 = Color.fromARGB(255, 2, 182, 164);
  Color color30 = Color.fromARGB(255, 2, 182, 164);
  Color color31 = Color.fromARGB(255, 2, 182, 164);
  Color color32 = Color.fromARGB(255, 2, 182, 164);
  Color color33 = Color.fromARGB(255, 2, 182, 164);
  Color color34 = Color.fromARGB(255, 2, 182, 164);
  Color color35 = Color.fromARGB(255, 2, 182, 164);
  Color color36 = Color.fromARGB(255, 2, 182, 164);
  Color color37 = Color.fromARGB(255, 2, 182, 164);
  Color color38 = Color.fromARGB(255, 2, 182, 164);
  Color color39 = Color.fromARGB(255, 2, 182, 164);
  Color color40 = Color.fromARGB(255, 2, 182, 164);







  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
              height: MediaQuery.of(context).size.height * 5 / 7,
              width: MediaQuery.of(context).size.width * 7 / 7,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLW1, PlayerData: LW1data, color1: color36);
                      }, onAccept: (Player player) {
                        setState(() {
                          color36 = color2;
                          PosLW1 = player.name;
                          LW1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST1, PlayerData: ST1data, color1: color37);
                      }, onAccept: (Player player) {
                        setState(() {
                          color37 = color2;
                          PosST1 = player.name;
                          ST1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST2, PlayerData: ST2data, color1: color38);
                      }, onAccept: (Player player) {
                        setState(() {
                          color38 = color2;
                          PosST2 = player.name;
                          ST2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST3, PlayerData: ST3data, color1: color39);
                      }, onAccept: (Player player) {
                        setState(() {
                          color39 = color2;
                          PosST3 = player.name;
                          ST3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRW1, PlayerData: RW1data, color1: color40);
                      }, onAccept: (Player player) {
                        setState(() {
                          color40 = color2;
                          PosRW1 = player.name;
                          RW1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLW, PlayerData: LWdata, color1: color31);
                      }, onAccept: (Player player) {
                        setState(() {
                          color31 = color2;
                          PosLW = player.name;
                          LWdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM1, PlayerData: CAM1data, color1: color32);
                      }, onAccept: (Player player) {
                        setState(() {
                          color32 = color2;
                          PosCAM1 = player.name;
                          CAM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM2, PlayerData: CAM2data, color1: color33);
                      }, onAccept: (Player player) {
                        setState(() {
                          color33 = color2;
                          PosCAM2 = player.name;
                          CAM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM3, PlayerData: CAM3data, color1: color34);
                      }, onAccept: (Player player) {
                        setState(() {
                          color34 = color2;
                          PosCAM3 = player.name;
                          CAM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRW, PlayerData: RWdata, color1: color35);
                      }, onAccept: (Player player) {
                        setState(() {
                          color35 = color2;
                          PosRW = player.name;
                          RWdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLM1, PlayerData: LM1data, color1: color26);
                      }, onAccept: (Player player) {
                        setState(() {
                          color26 = color2;
                          PosLM1 = player.name;
                          LM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM4, PlayerData: CM4data, color1: color27);
                      }, onAccept: (Player player) {
                        setState(() {
                          color27 = color2;
                          PosCM4 = player.name;
                          CM4data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM5, PlayerData: CM5data, color1: color28);
                      }, onAccept: (Player player) {
                        setState(() {
                          color28 = color2;
                          PosCM5 = player.name;
                          CM5data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM6, PlayerData: CM6data, color1: color29);
                      }, onAccept: (Player player) {
                        setState(() {
                          color29 = color2;
                          PosCM6 = player.name;
                          CM6data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRM1, PlayerData: RM1data, color1: color30);
                      }, onAccept: (Player player) {
                        setState(() {
                          color30 = color2;
                          PosRM1 = player.name;
                          RM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLM, PlayerData: LMdata, color1: color21);
                      }, onAccept: (Player player) {
                        setState(() {
                          color21 = color2;
                          PosLM = player.name;
                          LMdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM1, PlayerData: CM1data, color1: color22);
                      }, onAccept: (Player player) {
                        setState(() {
                          color22 = color2;
                          PosCM1 = player.name;
                          CM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM2, PlayerData: CM2data, color1: color23);
                      }, onAccept: (Player player) {
                        setState(() {
                          color23 = color2;
                          PosCM2 = player.name;
                          CM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM3, PlayerData: CM3data, color1: color24);
                      }, onAccept: (Player player) {
                        setState(() {
                          color24 = color2;
                          PosCM3 = player.name;
                          CM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRM, PlayerData: RMdata, color1: color25);
                      }, onAccept: (Player player) {
                        setState(() {
                          color25 = color2;
                          PosRM = player.name;
                          RMdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLWB, PlayerData: LWBdata, color1: color16);
                      }, onAccept: (Player player) {
                        setState(() {
                          color16 = color2;
                          PosLWB = player.name;
                          LWBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM1, PlayerData: CDM1data, color1: color17);
                      }, onAccept: (Player player) {
                        setState(() {
                          color17 = color2;
                          PosCDM1 = player.name;
                          CDM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM2, PlayerData: CDM2data, color1: color18);
                      }, onAccept: (Player player) {
                        setState(() {
                          color18 = color2;
                          PosCDM2 = player.name;
                          CDM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM3, PlayerData: CDM3data, color1: color19);
                      }, onAccept: (Player player) {
                        setState(() {
                          color19 = color2;
                          PosCDM3 = player.name;
                          CDM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRWB, PlayerData: RWBdata, color1: color20);
                      }, onAccept: (Player player) {
                        setState(() {
                          color20 = color2;
                          PosRWB = player.name;
                          RWBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),




                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLB, PlayerData: LBdata, color1: color11);
                      }, onAccept: (Player player) {
                        setState(() {
                          color11 = color2;
                          PosLB = player.name;
                          LBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB1, PlayerData: CB1data, color1: color12);
                      }, onAccept: (Player player) {
                        setState(() {
                          color12 = color2;
                          PosCB1 = player.name;
                          CB1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB2, PlayerData: CB2data, color1: color13);
                      }, onAccept: (Player player) {
                        setState(() {
                          color13 = color2;
                          PosCB2 = player.name;
                          CB2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB3, PlayerData: CB3data, color1: color14);
                      }, onAccept: (Player player) {
                        setState(() {
                          color14 = color2;
                          PosCB3 = player.name;
                          CB3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRB, PlayerData: RBdata, color1: color15);
                      }, onAccept: (Player player) {
                        setState(() {
                          color15 = color2;
                          PosRB = player.name;
                          RBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosGK, PlayerData: GKdata, color1: color10,);
                      }, onAccept: (Player player) {
                        setState(() {
                          color10 = color2;
                          PosGK = player.name;
                          GKdata = "${player.ATT} ${player.DEF}";
                        });
                        
                      }),

                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.teal.shade100),
                        ),
                      ),
                    ],
                  ),
                ],
              )),













          Container(
              height: MediaQuery.of(context).size.height * 2 / 7,
              width: MediaQuery.of(context).size.width * 7 / 7,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      Draggable(
                        data: Argentina[0],
                        feedback: Material(child: PlayerChart(player: Argentina[0])),
                        child: PlayerChart(player: Argentina[0]),
                      ),
                      Draggable(
                        data: Argentina[1],
                        feedback: Material(child: PlayerChart(player: Argentina[1])),
                        child: PlayerChart(player: Argentina[1]),
                      ),
                      Draggable(
                        data: Argentina[2],
                        feedback: Material(child: PlayerChart(player: Argentina[2])),
                        child: PlayerChart(player: Argentina[2]),
                      ),
                      Draggable(
                        data: Argentina[3],
                        feedback: Material(child: PlayerChart(player: Argentina[3])),
                        child: PlayerChart(player: Argentina[3]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Draggable(
                        data: Argentina[4],
                        feedback: Material(child: PlayerChart(player: Argentina[4])),
                        child: PlayerChart(player: Argentina[4]),
                      ),
                      Draggable(
                        data: Argentina[5],
                        feedback: Material(child: PlayerChart(player: Argentina[5])),
                        child: PlayerChart(player: Argentina[5]),
                      ),
                      Draggable(
                        data: Argentina[6],
                        feedback: Material(child: PlayerChart(player: Argentina[6])),
                        child: PlayerChart(player: Argentina[6]),
                      ),
                      Draggable(
                        data: Argentina[7],
                        feedback: Material(child: PlayerChart(player: Argentina[7])),
                        child: PlayerChart(player: Argentina[7]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Draggable(
                        data: Argentina[8],
                        feedback: Material(child: PlayerChart(player: Argentina[8])),
                        child: PlayerChart(player: Argentina[8]),
                      ),
                      Draggable(
                        data: Argentina[9],
                        feedback: Material(child: PlayerChart(player: Argentina[9])),
                        child: PlayerChart(player: Argentina[9]),
                      ),
                      Draggable(
                        data: Argentina[10],
                        feedback: Material(child: PlayerChart(player: Argentina[10])),
                        child: PlayerChart(player: Argentina[10]),
                      ),
                      
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 2 / 7 * 1 / 3,
                        width: MediaQuery.of(context).size.width * 1 / 4,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ]));
  }
}


class formationBrasil extends StatefulWidget {
  formationBrasil({
    Key? key,
  }) : super(key: key);

  @override
  State<formationBrasil> createState() => _formationBrasilState();
}

class _formationBrasilState extends State<formationBrasil> {
  String PosGK = "GK";
  String GKdata = "-";

  String PosLB = "LB";
  String LBdata = "-";

  String PosCB1 = "CB";
  String CB1data = "-";

  String PosCB2 = "CB";
  String CB2data = "-";

  String PosCB3 = "CB";
  String CB3data = "-";

  String PosRB = "RB";
  String RBdata = "-";

  String PosLWB = "LWB";
  String LWBdata = "-";

  String PosCDM1 = "CDM";
  String CDM1data = "-";

  String PosCDM2 = "CDM";
  String CDM2data = "-";

  String PosCDM3 = "CDM";
  String CDM3data = "-";

  String PosRWB = "RWB";
  String RWBdata = "-";

  String PosLM = "LM";
  String LMdata = "-";

  String PosCM1 = "CM";
  String CM1data = "-";

  String PosCM2 = "CM";
  String CM2data = "-";

  String PosCM3 = "CM";
  String CM3data = "-";

  String PosRM = "RM";
  String RMdata = "-";

  String PosLM1 = "LM";
  String LM1data = "-";

  String PosCM4 = "CM";
  String CM4data = "-";

  String PosCM5 = "CM";
  String CM5data = "-";

  String PosCM6 = "CM";
  String CM6data = "-";

  String PosRM1 = "RM";
  String RM1data = "-";

  String PosLW = "LW";
  String LWdata = "-";

  String PosCAM1 = "CAM";
  String CAM1data = "-";

  String PosCAM2 = "CAM";
  String CAM2data = "-";

  String PosCAM3 = "CAM";
  String CAM3data = "-";

  String PosRW = "RW";
  String RWdata = "-";

  String PosLW1 = "LW";
  String LW1data = "-";

  String PosST1 = "ST";
  String ST1data = "-";

  String PosST2 = "ST";
  String ST2data = "-";

  String PosST3 = "ST";
  String ST3data = "-";

  String PosRW1 = "RW";
  String RW1data = "-";

  Color color1 = Color.fromARGB(255, 2, 182, 164);
  Color color2 = Colors.white;

  Color color10 = Color.fromARGB(255, 2, 182, 164);
  Color color11 = Color.fromARGB(255, 2, 182, 164);
  Color color12 = Color.fromARGB(255, 2, 182, 164);
  Color color13 = Color.fromARGB(255, 2, 182, 164);
  Color color14 = Color.fromARGB(255, 2, 182, 164);
  Color color15 = Color.fromARGB(255, 2, 182, 164);
  Color color16 = Color.fromARGB(255, 2, 182, 164);
  Color color17 = Color.fromARGB(255, 2, 182, 164);
  Color color18 = Color.fromARGB(255, 2, 182, 164);
  Color color19 = Color.fromARGB(255, 2, 182, 164);
  Color color20 = Color.fromARGB(255, 2, 182, 164);
  Color color21 = Color.fromARGB(255, 2, 182, 164);
  Color color22 = Color.fromARGB(255, 2, 182, 164);
  Color color23 = Color.fromARGB(255, 2, 182, 164);
  Color color24 = Color.fromARGB(255, 2, 182, 164);
  Color color25 = Color.fromARGB(255, 2, 182, 164);
  Color color26 = Color.fromARGB(255, 2, 182, 164);
  Color color27 = Color.fromARGB(255, 2, 182, 164);
  Color color28 = Color.fromARGB(255, 2, 182, 164);
  Color color29 = Color.fromARGB(255, 2, 182, 164);
  Color color30 = Color.fromARGB(255, 2, 182, 164);
  Color color31 = Color.fromARGB(255, 2, 182, 164);
  Color color32 = Color.fromARGB(255, 2, 182, 164);
  Color color33 = Color.fromARGB(255, 2, 182, 164);
  Color color34 = Color.fromARGB(255, 2, 182, 164);
  Color color35 = Color.fromARGB(255, 2, 182, 164);
  Color color36 = Color.fromARGB(255, 2, 182, 164);
  Color color37 = Color.fromARGB(255, 2, 182, 164);
  Color color38 = Color.fromARGB(255, 2, 182, 164);
  Color color39 = Color.fromARGB(255, 2, 182, 164);
  Color color40 = Color.fromARGB(255, 2, 182, 164);







  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
              height: MediaQuery.of(context).size.height * 5 / 7,
              width: MediaQuery.of(context).size.width * 7 / 7,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLW1, PlayerData: LW1data, color1: color36);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("LW");
                        player.PlayerGDEF("LW");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color36 = color2;
                          PosLW1 = player.name;
                          LW1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST1, PlayerData: ST1data, color1: color37);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("ST");
                        player.PlayerGDEF("ST");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color37 = color2;
                          PosST1 = player.name;
                          ST1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST2, PlayerData: ST2data, color1: color38);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("ST");
                        player.PlayerGDEF("ST");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color38 = color2;
                          PosST2 = player.name;
                          ST2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosST3, PlayerData: ST3data, color1: color39);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("ST");
                        player.PlayerGDEF("ST");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color39 = color2;
                          PosST3 = player.name;
                          ST3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRW1, PlayerData: RW1data, color1: color40);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("RW");
                        player.PlayerGDEF("RW");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color40 = color2;
                          PosRW1 = player.name;
                          RW1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLW, PlayerData: LWdata, color1: color31);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("LW");
                        player.PlayerGDEF("LW");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color31 = color2;
                          PosLW = player.name;
                          LWdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM1, PlayerData: CAM1data, color1: color32);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CAM");
                        player.PlayerGDEF("CAM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color32 = color2;
                          PosCAM1 = player.name;
                          CAM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM2, PlayerData: CAM2data, color1: color33);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CAM");
                        player.PlayerGDEF("CAM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color33 = color2;
                          PosCAM2 = player.name;
                          CAM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCAM3, PlayerData: CAM3data, color1: color34);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CAM");
                        player.PlayerGDEF("CAM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color34 = color2;
                          PosCAM3 = player.name;
                          CAM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRW, PlayerData: RWdata, color1: color35);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("RW");
                        player.PlayerGDEF("RW");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color35 = color2;
                          PosRW = player.name;
                          RWdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLM1, PlayerData: LM1data, color1: color26);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("LM");
                        player.PlayerGDEF("LM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color26 = color2;
                          PosLM1 = player.name;
                          LM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM4, PlayerData: CM4data, color1: color27);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CM");
                        player.PlayerGDEF("CM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color27 = color2;
                          PosCM4 = player.name;
                          CM4data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM5, PlayerData: CM5data, color1: color28);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CM");
                        player.PlayerGDEF("CM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color28 = color2;
                          PosCM5 = player.name;
                          CM5data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM6, PlayerData: CM6data, color1: color29);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CM");
                        player.PlayerGDEF("CM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color29 = color2;
                          PosCM6 = player.name;
                          CM6data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRM1, PlayerData: RM1data, color1: color30);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("RM");
                        player.PlayerGDEF("RM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color30 = color2;
                          PosRM1 = player.name;
                          RM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLM, PlayerData: LMdata, color1: color21);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("LM");
                        player.PlayerGDEF("LM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color21 = color2;
                          PosLM = player.name;
                          LMdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM1, PlayerData: CM1data, color1: color22);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CM");
                        player.PlayerGDEF("CM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color22 = color2;
                          PosCM1 = player.name;
                          CM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM2, PlayerData: CM2data, color1: color23);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CM");
                        player.PlayerGDEF("CM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color23 = color2;
                          PosCM2 = player.name;
                          CM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCM3, PlayerData: CM3data, color1: color24);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CM");
                        player.PlayerGDEF("CM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color24 = color2;
                          PosCM3 = player.name;
                          CM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRM, PlayerData: RMdata, color1: color25);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("RM");
                        player.PlayerGDEF("RM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color25 = color2;
                          PosRM = player.name;
                          RMdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLWB, PlayerData: LWBdata, color1: color16);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("LWB");
                        player.PlayerGDEF("LWB");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color16 = color2;
                          PosLWB = player.name;
                          LWBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM1, PlayerData: CDM1data, color1: color17);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CDM");
                        player.PlayerGDEF("CDM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color17 = color2;
                          PosCDM1 = player.name;
                          CDM1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM2, PlayerData: CDM2data, color1: color18);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CDM");
                        player.PlayerGDEF("CDM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color18 = color2;
                          PosCDM2 = player.name;
                          CDM2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCDM3, PlayerData: CDM3data, color1: color19);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CDM");
                        player.PlayerGDEF("CDM");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color19 = color2;
                          PosCDM3 = player.name;
                          CDM3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRWB, PlayerData: RWBdata, color1: color20);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("RWB");
                        player.PlayerGDEF("RWB");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color20 = color2;
                          PosRWB = player.name;
                          RWBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),




                  Row(
                    children: [
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosLB, PlayerData: LBdata, color1: color11);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("LB");
                        player.PlayerGDEF("LB");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color11 = color2;
                          PosLB = player.name;
                          LBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB1, PlayerData: CB1data, color1: color12);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CB");
                        player.PlayerGDEF("CB");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color12 = color2;
                          PosCB1 = player.name;
                          CB1data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB2, PlayerData: CB2data, color1: color13);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CB");
                        player.PlayerGDEF("CB");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color13 = color2;
                          PosCB2 = player.name;
                          CB2data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosCB3, PlayerData: CB3data, color1: color14);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("CB");
                        player.PlayerGDEF("CB");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color14 = color2;
                          PosCB3 = player.name;
                          CB3data = "${player.ATT} ${player.DEF}";
                        });
                      }),
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosRB, PlayerData: RBdata, color1: color15);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("RB");
                        player.PlayerGDEF("RB");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          color15 = color2;
                          PosRB = player.name;
                          RBdata = "${player.ATT} ${player.DEF}";
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Color.fromARGB(255, 2, 182, 164)),
                        ),
                      ),
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Color.fromARGB(255, 2, 182, 164)),
                        ),
                      ),
                      
                      DragTarget(
                          builder: (context, data, rejectedData) {
                        return PosChart(Pos: PosGK, PlayerData: GKdata, color1: color10,);
                      }, onAccept: (Player player) {
                        player.PlayerGATT("GK");
                        player.PlayerGDEF("GK");
                        debugPrint("${player.name} : ${player.GATT} ${player.GDEF}");
                        setState(() {
                          
                          color10 = color2;
                          PosGK = player.name;
                          GKdata = "${player.ATT} ${player.DEF}";
                          
                        });
                        
                      }),

                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Color.fromARGB(255, 2, 182, 164)),
                        ),
                      ),
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 5 / 7 * 1 / 7,
                        width: MediaQuery.of(context).size.width * 1 / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Color.fromARGB(255, 2, 182, 164)),
                        ),
                      ),
                    ],
                  ),
                ],
              )),













          Container(
              height: MediaQuery.of(context).size.height * 2 / 7,
              width: MediaQuery.of(context).size.width * 7 / 7,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      Draggable(
                        data: Brasil[0],
                        feedback: Material(child: PlayerChart(player: Brasil[0])),
                        child: PlayerChart(player: Brasil[0]),
                      ),
                      Draggable(
                        data: Brasil[1],
                        feedback: Material(child: PlayerChart(player: Brasil[1])),
                        child: PlayerChart(player: Brasil[1]),
                      ),
                      Draggable(
                        data: Brasil[2],
                        feedback: Material(child: PlayerChart(player: Brasil[2])),
                        child: PlayerChart(player: Brasil[2]),
                      ),
                      Draggable(
                        data: Brasil[3],
                        feedback: Material(child: PlayerChart(player: Brasil[3])),
                        child: PlayerChart(player: Brasil[3]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Draggable(
                        data: Brasil[4],
                        feedback: Material(child: PlayerChart(player: Brasil[4])),
                        child: PlayerChart(player: Brasil[4]),
                      ),
                      Draggable(
                        data: Brasil[5],
                        feedback: Material(child: PlayerChart(player: Brasil[5])),
                        child: PlayerChart(player: Brasil[5]),
                      ),
                      Draggable(
                        data: Brasil[6],
                        feedback: Material(child: PlayerChart(player: Brasil[6])),
                        child: PlayerChart(player: Brasil[6]),
                      ),
                      Draggable(
                        data: Brasil[7],
                        feedback: Material(child: PlayerChart(player: Brasil[7])),
                        child: PlayerChart(player: Brasil[7]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Draggable(
                        data: Brasil[8],
                        feedback: Material(child: PlayerChart(player: Brasil[8])),
                        child: PlayerChart(player: Brasil[8]),
                      ),
                      Draggable(
                        data: Brasil[9],
                        feedback: Material(child: PlayerChart(player: Brasil[9])),
                        child: PlayerChart(player: Brasil[9]),
                      ),
                      Draggable(
                        data: Brasil[10],
                        feedback: Material(child: PlayerChart(player: Brasil[10])),
                        child: PlayerChart(player: Brasil[10]),
                      ),
                      
                      Container(
                        height:
                            MediaQuery.of(context).size.height * 2 / 7 * 1 / 3,
                        width: MediaQuery.of(context).size.width * 1 / 4,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ]));
  }
}







class PosChart extends StatelessWidget {
   PosChart({
    Key? key,
    required this.Pos,
    required this.PlayerData,
    required this.color1,
  }) : super(key: key);

  final String Pos;
  final String PlayerData;
  Color color1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *5/7 * 1/7,
      width: MediaQuery.of(context).size.width * 1/5,
      alignment: Alignment.center,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Color.fromARGB(255, 2, 182, 164)),
      ),
      child: Column(
      children: [
        Expanded(
          flex: 2,
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.contain,
            child: Text(
              Pos,
              style: TextStyle(color: color1),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.contain,
            child: Text(
              PlayerData,
              style: TextStyle(color: color1),
            ),
          ),
        ),
      ],
    ),
    );
  }
}

class PlayerChart extends StatelessWidget {
  PlayerChart({
    Key? key,
    required this.player,
  }) : super(key: key);
  Player player;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 2 / 7 * 1 / 3,
      width: MediaQuery.of(context).size.width * 1 / 4,
      alignment: Alignment.center,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 127, 150),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.contain,
              child: Text(
                player.name,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 11,
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.contain,
              child: Text(
                "ATT: ${player.ATT} DEF: ${player.DEF}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
