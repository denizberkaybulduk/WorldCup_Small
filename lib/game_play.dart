// ignore_for_file: non_constant_identifier_names

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wc_2022/final.dart';
import 'germany.dart';

final double GerATTPower = GerAttPower(Germany);

GerAttPower(List) {
  double GerATT = 0;
  for (int i = 0; i < 11; i++) {
    GerATT = Germany[i].ATT + GerATT;
  }
  return GerATT / 11;
}

final double GerDEFPower = GerDefPower(Germany);

GerDefPower(List) {
  double GerDEF = 0;
  for (int i = 0; i < 11; i++) {
    GerDEF = Germany[i].DEF + GerDEF;
  }
  return GerDEF / 11;
}

final double ArgATTPower = ArgAttPower(Argentina);

ArgAttPower(List) {
  double ArgATT = 0;
  for (int i = 0; i < 11; i++) {
    ArgATT = Argentina[i].ATT + ArgATT;
  }
  return ArgATT / 11;
}

final double ArgDEFPower = ArgDefPower(Argentina);

ArgDefPower(List) {
  double ArgDEF = 0;
  for (int i = 0; i < 11; i++) {
    ArgDEF = Argentina[i].DEF + ArgDEF;
  }
  return ArgDEF / 11;
}

final double PorATTPower = PorAttPower(Portugal);

PorAttPower(List) {
  double PorATT = 0;
  for (int i = 0; i < 11; i++) {
    PorATT = Portugal[i].ATT + PorATT;
  }
  return PorATT / 11;
}

final double PorDEFPower = PorDefPower(Portugal);

PorDefPower(List) {
  double PorDEF = 0;
  for (int i = 0; i < 11; i++) {
    PorDEF = Portugal[i].DEF + PorDEF;
  }
  return PorDEF / 11;
}

final double BraATTPower = BraAttPower(Brasil);

BraAttPower(List) {
  double BraATT = 0;
  for (int i = 0; i < 11; i++) {
    BraATT = Brasil[i].ATT + BraATT;
  }
  return BraATT / 11;
}

final double BraDEFPower = BraDefPower(Brasil);

BraDefPower(List) {
  double BraDEF = 0;
  for (int i = 0; i < 11; i++) {
    BraDEF = Brasil[i].DEF + BraDEF;
  }
  return BraDEF / 11;
}

int you_goals = 0;
int opp_goals = 0;
int t1_goals = 0;
int t2_goals = 0;

/*

class macOynat extends StatelessWidget {
  macOynat({
    Key? key,
    required this.teamCode,
    required this.yourTeamCode,
  }) : super(key: key);

  final int teamCode;
  final int yourTeamCode;
  

  // 0 = ARG, 1 = POR, 2 = BRA

  Skor() {
    
    double oppATTPower = 0;
    double oppDEFPower = 0;

    switch (teamCode) {
      case 0:
        oppATTPower = ArgATTPower;
        oppDEFPower = ArgDEFPower;
        for (int i = 0; i < 10; i++) {
          int powers = GerATTPower.toInt() + oppATTPower.toInt();
          int ihtimal = Random().nextInt(powers);
          if (ihtimal < GerATTPower) {
            int vspowers = GerATTPower.toInt() + oppDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < GerATTPower / 2) {
              you_goals++;
            }
          } else {
            int vspowers = oppATTPower.toInt() + GerDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < oppATTPower / 2) {
              opp_goals++;
            }
          }
        }

        if (you_goals == opp_goals) you_goals++;

        return "$you_goals vs $opp_goals";

      case 1:
        oppATTPower = PorATTPower;
        oppDEFPower = PorDEFPower;
        for (int i = 0; i < 10; i++) {
          int powers = GerATTPower.toInt() + oppATTPower.toInt();
          int ihtimal = Random().nextInt(powers);
          if (ihtimal < GerATTPower) {
            int vspowers = GerATTPower.toInt() + oppDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < GerATTPower / 2) {
              you_goals++;
            }
          } else {
            int vspowers = oppATTPower.toInt() + GerDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < oppATTPower / 2) {
              opp_goals++;
            }
          }
        }

        if (you_goals == opp_goals) you_goals++;

        return "$you_goals vs $opp_goals";

      case 2:
        oppATTPower = BraATTPower;
        oppDEFPower = BraDEFPower;
        for (int i = 0; i < 10; i++) {
          int powers = GerATTPower.toInt() + oppATTPower.toInt();
          int ihtimal = Random().nextInt(powers);
          if (ihtimal < GerATTPower) {
            int vspowers = GerATTPower.toInt() + oppDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < GerATTPower / 2) {
              you_goals++;
            }
          } else {
            int vspowers = oppATTPower.toInt() + GerDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < oppATTPower / 2) {
              opp_goals++;
            }
          }
        }

        if (you_goals == opp_goals) you_goals++;

        return "$you_goals vs $opp_goals";

      default:
        "$you_goals vs $opp_goals";
    }
  }

  digerSkor() {
    double t1ATTPower = 0;
    double t1DEFPower = 0;
    double t2ATTPower = 0;
    double t2DEFPower = 0;

    switch (teamCode) {
      case 0:
        t1ATTPower = PorATTPower;
        t1DEFPower = PorDEFPower;
        t2ATTPower = BraATTPower;
        t2DEFPower = BraDEFPower;

        for (int i = 0; i < 10; i++) {
          int powers = t1ATTPower.toInt() + t2ATTPower.toInt();
          int ihtimal = Random().nextInt(powers);
          if (ihtimal < t1ATTPower) {
            int vspowers = t1ATTPower.toInt() + t2DEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < t1ATTPower / 2) {
              t1_goals++;
            }
          } else {
            int vspowers = t2ATTPower.toInt() + GerDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < t2ATTPower / 2) {
              t2_goals++;
            }
          }
        }

        if (t1_goals == t2_goals) t1_goals++;

        return "$t1_goals vs $t2_goals";

      case 1:
        t1ATTPower = ArgATTPower;
        t1DEFPower = ArgDEFPower;
        t2ATTPower = BraATTPower;
        t2DEFPower = BraDEFPower;
        for (int i = 0; i < 10; i++) {
          int powers = t1ATTPower.toInt() + t2ATTPower.toInt();
          int ihtimal = Random().nextInt(powers);
          if (ihtimal < t1ATTPower) {
            int vspowers = t1ATTPower.toInt() + t2DEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < t1ATTPower / 2) {
              t1_goals++;
            }
          } else {
            int vspowers = t2ATTPower.toInt() + GerDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < t2ATTPower / 2) {
              t2_goals++;
            }
          }
        }

        if (t1_goals == t2_goals) t1_goals++;

        return "$t1_goals vs $t2_goals";

      case 2:
        t1ATTPower = PorATTPower;
        t1DEFPower = PorDEFPower;
        t2ATTPower = BraATTPower;
        t2DEFPower = BraDEFPower;
        for (int i = 0; i < 10; i++) {
          int powers = t1ATTPower.toInt() + t2ATTPower.toInt();
          int ihtimal = Random().nextInt(powers);
          if (ihtimal < t1ATTPower) {
            int vspowers = t1ATTPower.toInt() + t2DEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < t1ATTPower / 2) {
              t1_goals++;
            }
          } else {
            int vspowers = t2ATTPower.toInt() + GerDEFPower.toInt();
            int gol_ihtimal = Random().nextInt(vspowers);
            if (gol_ihtimal < t2ATTPower / 2) {
              t2_goals++;
            }
          }
        }

        if (t1_goals == t2_goals) t1_goals++;

        return "$t1_goals vs $t2_goals";

      default:
        "$t1_goals vs $t2_goals";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 56, 56),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "RESULTS",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 2,
                    child: Image.asset(
                      "assets/FifaWC2022/GER.png",
                    )),
                newMethod(),
                if (teamCode == 0)
                  Expanded(
                      flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png"))
                else if (teamCode == 1)
                  Expanded(
                      flex: 2, child: Image.asset("assets/FifaWC2022/POR.png"))
                else
                  Expanded(
                      flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
                Expanded(flex: 1, child: Container()),
              ],
            ),
            digerEslesme(),

            

            Container(
                margin: EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>finalMac(teamCode: teamCode,)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("FİNALE GİT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          )),
                    )),
              ),
          ],
        ),
      ),
    );
  }

  Row digerEslesme() {
    if (teamCode == 0) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (teamCode == 1) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    }
  }

  Expanded newMethod() {
    if (teamCode == 0) {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              Skor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    } else if (teamCode == 1) {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              Skor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    } else {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              Skor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    }
  }

  Expanded digernewMethod() {
    if (teamCode == 0) {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              digerSkor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    } else if (teamCode == 1) {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              digerSkor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    } else {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              digerSkor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    }
  }
}

*/

class macOynat extends StatelessWidget {
  macOynat({
    Key? key,
    required this.teamCode,
    required this.yourTeamCode,
  }) : super(key: key);

  final int teamCode;
  final int yourTeamCode;

  // 0 = ARG, 1 = POR, 2 = BRA, GER = 3;

  Skor() {
    double youATTPower = 0;
    double youDEFPower = 0;
    double oppATTPower = 0;
    double oppDEFPower = 0;

    if (yourTeamCode == 10 && teamCode == 0) {
      youATTPower = ArgATTPower;
      youDEFPower = ArgDEFPower;
      oppATTPower = PorATTPower;
      oppDEFPower = PorDEFPower;
    } else if (yourTeamCode == 10 && teamCode == 1) {
      youATTPower = ArgATTPower;
      youDEFPower = ArgDEFPower;
      oppATTPower = BraATTPower;
      oppDEFPower = BraDEFPower;
    } else if (yourTeamCode == 10 && teamCode == 2) {
      youATTPower = ArgATTPower;
      youDEFPower = ArgDEFPower;
      oppATTPower = GerATTPower;
      oppDEFPower = GerDEFPower;
    } else if (yourTeamCode == 11 && teamCode == 0) {
      youATTPower = PorATTPower;
      youDEFPower = PorDEFPower;
      oppATTPower = ArgATTPower;
      oppDEFPower = ArgDEFPower;
    } else if (yourTeamCode == 11 && teamCode == 1) {
      youATTPower = PorATTPower;
      youDEFPower = PorDEFPower;
      oppATTPower = BraATTPower;
      oppDEFPower = BraDEFPower;
    } else if (yourTeamCode == 11 && teamCode == 2) {
      youATTPower = PorATTPower;
      youDEFPower = PorDEFPower;
      oppATTPower = GerATTPower;
      oppDEFPower = GerDEFPower;
    } else if (yourTeamCode == 12 && teamCode == 0) {
      youATTPower = BraATTPower;
      youDEFPower = BraDEFPower;
      oppATTPower = ArgATTPower;
      oppDEFPower = ArgDEFPower;
    } else if (yourTeamCode == 12 && teamCode == 1) {
      youATTPower = BraATTPower;
      youDEFPower = BraDEFPower;
      oppATTPower = PorATTPower;
      oppDEFPower = PorDEFPower;
    } else if (yourTeamCode == 12 && teamCode == 2) {
      youATTPower = BraATTPower;
      youDEFPower = BraDEFPower;
      oppATTPower = GerATTPower;
      oppDEFPower = GerDEFPower;
    } else if (yourTeamCode == 13 && teamCode == 0) {
      youATTPower = GerATTPower;
      youDEFPower = GerDEFPower;
      oppATTPower = ArgATTPower;
      oppDEFPower = ArgDEFPower;
    } else if (yourTeamCode == 13 && teamCode == 1) {
      youATTPower = GerATTPower;
      youDEFPower = GerDEFPower;
      oppATTPower = PorATTPower;
      oppDEFPower = PorDEFPower;
    } else if (yourTeamCode == 13 && teamCode == 2) {
      youATTPower = GerATTPower;
      youDEFPower = GerDEFPower;
      oppATTPower = BraATTPower;
      oppDEFPower = BraDEFPower;
    }

    for (int i = 0; i < 10; i++) {
      int powers = youATTPower.toInt() + oppATTPower.toInt();
      int ihtimal = Random().nextInt(powers);
      if (ihtimal < youATTPower) {
        int vspowers = youATTPower.toInt() + oppDEFPower.toInt() + oppDEFPower.toInt();
        int gol_ihtimal = Random().nextInt(vspowers);
        if (gol_ihtimal < youATTPower) {
          you_goals++;
        }
      } else {
        int vspowers = oppATTPower.toInt() + youDEFPower.toInt() + youDEFPower.toInt();
        int gol_ihtimal = Random().nextInt(vspowers);
        if (gol_ihtimal < oppATTPower) {
          opp_goals++;
        }
      }
    }

    if (you_goals == opp_goals) you_goals++;

    return "$you_goals vs $opp_goals";
  }

  digerSkor() {
    double t1ATTPower = 0;
    double t1DEFPower = 0;
    double t2ATTPower = 0;
    double t2DEFPower = 0;

    if (yourTeamCode == 10 && teamCode == 0) {
      t1ATTPower = BraATTPower;
      t1DEFPower = BraDEFPower;
      t2ATTPower = GerATTPower;
      t2DEFPower = GerDEFPower;
    } else if (yourTeamCode == 10 && teamCode == 1) {
      t1ATTPower = PorATTPower;
      t1DEFPower = PorDEFPower;
      t2ATTPower = GerATTPower;
      t2DEFPower = GerDEFPower;
    } else if (yourTeamCode == 10 && teamCode == 2) {
      t1ATTPower = PorATTPower;
      t1DEFPower = PorDEFPower;
      t2ATTPower = BraATTPower;
      t2DEFPower = BraDEFPower;
    } else if (yourTeamCode == 11 && teamCode == 0) {
      t1ATTPower = BraATTPower;
      t1DEFPower = BraDEFPower;
      t2ATTPower = GerATTPower;
      t2DEFPower = GerDEFPower;
    } else if (yourTeamCode == 11 && teamCode == 1) {
      t1ATTPower = ArgATTPower;
      t1DEFPower = ArgDEFPower;
      t2ATTPower = GerATTPower;
      t2DEFPower = GerDEFPower;
    } else if (yourTeamCode == 11 && teamCode == 2) {
      t1ATTPower = ArgATTPower;
      t1DEFPower = ArgDEFPower;
      t2ATTPower = BraATTPower;
      t2DEFPower = BraDEFPower;
    } else if (yourTeamCode == 12 && teamCode == 0) {
      t1ATTPower = PorATTPower;
      t1DEFPower = PorDEFPower;
      t2ATTPower = GerATTPower;
      t2DEFPower = GerDEFPower;
    } else if (yourTeamCode == 12 && teamCode == 1) {
      t1ATTPower = ArgATTPower;
      t1DEFPower = ArgDEFPower;
      t2ATTPower = GerATTPower;
      t2DEFPower = GerDEFPower;
    } else if (yourTeamCode == 12 && teamCode == 2) {
      t1ATTPower = ArgATTPower;
      t1DEFPower = ArgDEFPower;
      t2ATTPower = PorATTPower;
      t2DEFPower = PorDEFPower;
    } else if (yourTeamCode == 13 && teamCode == 0) {
      t1ATTPower = PorATTPower;
      t1DEFPower = PorDEFPower;
      t2ATTPower = BraATTPower;
      t2DEFPower = BraDEFPower;
    } else if (yourTeamCode == 13 && teamCode == 1) {
      t1ATTPower = ArgATTPower;
      t1DEFPower = ArgDEFPower;
      t2ATTPower = BraATTPower;
      t2DEFPower = BraDEFPower;
    } else if (yourTeamCode == 13 && teamCode == 2) {
      t1ATTPower = ArgATTPower;
      t1DEFPower = ArgDEFPower;
      t2ATTPower = PorATTPower;
      t2DEFPower = PorDEFPower;
    }

    for (int i = 0; i < 10; i++) {
      int powers = t1ATTPower.toInt() + t2ATTPower.toInt();
      int ihtimal = Random().nextInt(powers);
      if (ihtimal < t1ATTPower) {
        int vspowers = t1ATTPower.toInt() + t2DEFPower.toInt() + t2DEFPower.toInt();
        int gol_ihtimal = Random().nextInt(vspowers);
        if (gol_ihtimal < t1ATTPower) {
          t1_goals++;
        }
      } else {
        int vspowers = t2ATTPower.toInt() + t1DEFPower.toInt() + t1DEFPower.toInt();
        int gol_ihtimal = Random().nextInt(vspowers);
        if (gol_ihtimal < t2ATTPower) {
          t2_goals++;
        }
      }
    }

    if (t1_goals == t2_goals) t1_goals++;

    return "$t1_goals vs $t2_goals";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yourTeamCode == 10
          ? Color.fromARGB(255, 68, 139, 190)
          : yourTeamCode == 11
              ? Color.fromARGB(255, 105, 15, 9)
              : yourTeamCode == 12
                  ? Color(0xff1187D1)
                  : Color.fromARGB(255, 56, 56, 56),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: yourTeamCode == 10
            ? Color.fromARGB(255, 25, 94, 179)
            : yourTeamCode == 11
                ? Color.fromARGB(255, 25, 117, 109)
                : yourTeamCode == 12
                    ? Color(0xff193375)
                    : Color.fromARGB(255, 32, 32, 32),
        title: Center(
          child: Text(
            "RESULTS",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: gorsel(context),
    );
  }

  Container gorsel(BuildContext context) {
    switch (yourTeamCode) {
      case 10:
        return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/FifaWC2022/ARG.png",
                  )),
              newMethod(),
              if (teamCode == 0)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/POR.png"))
              else if (teamCode == 1)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png"))
              else
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
              Expanded(flex: 1, child: Container()),
            ],
          ),
          digerEslesme(),
          Container(
            margin: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: yourTeamCode == 10
                      ? MaterialStateProperty.all(
                          Color.fromARGB(255, 25, 94, 179))
                      : yourTeamCode == 11
                          ? MaterialStateProperty.all(
                              Color.fromARGB(255, 25, 117, 109))
                          : yourTeamCode == 12
                              ? MaterialStateProperty.all(Color(0xff193375))
                              : MaterialStateProperty.all(
                                  Color.fromARGB(255, 32, 32, 32)),
                ),
                onPressed: () {
            
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => finalMac(
                                teamCode: teamCode, yourTeamCode: yourTeamCode
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("FİNALE GİT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      )),
                )),
          ),
        ],
      ),
    );

    case 11:
        return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/FifaWC2022/POR.png",
                  )),
              newMethod(),
              if (teamCode == 0)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png"))
              else if (teamCode == 1)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png"))
              else
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
              Expanded(flex: 1, child: Container()),
            ],
          ),
          digerEslesme(),
          Container(
            margin: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: yourTeamCode == 10
                      ? MaterialStateProperty.all(
                          Color.fromARGB(255, 25, 94, 179))
                      : yourTeamCode == 11
                          ? MaterialStateProperty.all(
                              Color.fromARGB(255, 25, 117, 109))
                          : yourTeamCode == 12
                              ? MaterialStateProperty.all(Color(0xff193375))
                              : MaterialStateProperty.all(
                                  Color.fromARGB(255, 32, 32, 32)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => finalMac(
                                teamCode: teamCode, yourTeamCode: yourTeamCode
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("FİNALE GİT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      )),
                )),
          ),
        ],
      ),
    );

    case 12:
        return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/FifaWC2022/BRA.png",
                  )),
              newMethod(),
              if (teamCode == 0)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png"))
              else if (teamCode == 1)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/POR.png"))
              else
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
              Expanded(flex: 1, child: Container()),
            ],
          ),
          digerEslesme(),
          Container(
            margin: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: yourTeamCode == 10
                      ? MaterialStateProperty.all(
                          Color.fromARGB(255, 25, 94, 179))
                      : yourTeamCode == 11
                          ? MaterialStateProperty.all(
                              Color.fromARGB(255, 25, 117, 109))
                          : yourTeamCode == 12
                              ? MaterialStateProperty.all(Color(0xff193375))
                              : MaterialStateProperty.all(
                                  Color.fromARGB(255, 32, 32, 32)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => finalMac(
                                teamCode: teamCode, yourTeamCode: yourTeamCode
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("FİNALE GİT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      )),
                )),
          ),
        ],
      ),
    );

    case 13:
        return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/FifaWC2022/GER.png",
                  )),
              newMethod(),
              if (teamCode == 0)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png"))
              else if (teamCode == 1)
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/POR.png"))
              else
                Expanded(
                    flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
              Expanded(flex: 1, child: Container()),
            ],
          ),
          digerEslesme(),
          Container(
            margin: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: yourTeamCode == 10
                      ? MaterialStateProperty.all(
                          Color.fromARGB(255, 25, 94, 179))
                      : yourTeamCode == 11
                          ? MaterialStateProperty.all(
                              Color.fromARGB(255, 25, 117, 109))
                          : yourTeamCode == 12
                              ? MaterialStateProperty.all(Color(0xff193375))
                              : MaterialStateProperty.all(
                                  Color.fromARGB(255, 32, 32, 32)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => finalMac(
                                teamCode: teamCode, yourTeamCode: yourTeamCode,
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("FİNALE GİT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      )),
                )),
          ),
        ],
      ),
    );
      default: return Container();
    }
     
  }

  Row digerEslesme() {
    if (yourTeamCode == 10 && teamCode == 0) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 10 && teamCode == 1) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 10 && teamCode == 2) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 11 && teamCode == 0) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 11 && teamCode == 1) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 11 && teamCode == 2) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 12 && teamCode == 0) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 12 && teamCode == 1) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/GER.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 12 && teamCode == 2) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 13 && teamCode == 0) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else if (yourTeamCode == 13 && teamCode == 1) {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/BRA.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    } else  {
      return Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/ARG.png")),
          digernewMethod(),
          Expanded(flex: 2, child: Image.asset("assets/FifaWC2022/POR.png")),
          Expanded(flex: 1, child: Container()),
        ],
      );
    }
  }

  Expanded newMethod() {
    if (teamCode == 0) {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              Skor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    } else if (teamCode == 1) {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              Skor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    } else {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              Skor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    }
  }

  Expanded digernewMethod() {
    if (teamCode == 0) {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              digerSkor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    } else if (teamCode == 1) {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              digerSkor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    } else {
      return Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              digerSkor(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ));
    }
  }
}
