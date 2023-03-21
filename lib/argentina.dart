import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wc_2022/display_players.dart';
import 'game_play.dart';
import "models/players.dart";
import 'package:wc_2022/models/tactics.dart';

List<Player> Argentina =
    ArgentinaGenerate(Arg_Players, Arg_Code, Arg_ATT, Arg_DEF);
List<Player> Portugal =
    PortugalGenerate(Por_Players, Por_Code, Por_ATT, Por_DEF);
List<Player> Brasil = BrasilGenerate(Bra_Players, Bra_Code, Bra_ATT, Bra_DEF);
List<Player> Germany = GermanyGenerate(Ger_Players, Ger_Code, Ger_ATT, Ger_DEF);

class ArgGamePlay extends StatefulWidget {
  const ArgGamePlay({Key? key}) : super(key: key);

  @override
  State<ArgGamePlay> createState() => _ArgGamePlayState();
}

class _ArgGamePlayState extends State<ArgGamePlay> {
  int teamCode = Random().nextInt(3);
  int yourTeamCode = 10;

  // 0 = ARG, 1 = POR, 2 = GER

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 139, 190),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 68, 139, 190),
          child: ListView(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => displayPlayersARG()));
                  },
                  child: Text(
                    "Players",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),

                  TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>formationArgentina()));
                  },
                  child: Text(
                    "Formation",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
              
            ],
          )),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 25, 94, 179),
        title: Center(
          child: Text(
            "Argentina",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                    padding: EdgeInsets.all(30),
                    constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
                    child: takimlariEslestir(teamCode: teamCode))),
            Expanded(
              flex: 1,
              child: Container(
                child: Text("Eşleşmeler",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color.fromARGB(255, 25, 94, 179))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  macOynat(teamCode: teamCode, yourTeamCode: yourTeamCode)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("MAÇI OYNAT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          )),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class takimlariEslestir extends StatelessWidget {
  const takimlariEslestir({
    Key? key,
    required this.teamCode,
  }) : super(key: key);

  final int teamCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text(
                  "vs",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
              if (teamCode == 0)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/POR.png"))
              else if (teamCode == 1)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png"))
              else
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
            ],
          ),
          if (teamCode == 0)
            Row(children: [
              Expanded(
                  flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text(
                  "vs",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
              Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/GER.png"))
            ])
          else if (teamCode == 1)
            Row(children: [
              Expanded(
                  flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text(
                  "vs",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
              Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/GER.png"))
            ])
          else
            Row(children: [
              Expanded(
                  flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text(
                  "vs",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
              Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png"))
            ]),
        ],
      ),
    );
  }
}
