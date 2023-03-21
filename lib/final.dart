// ignore_for_file: non_constant_identifier_names

import 'dart:math';
import 'package:flutter/material.dart';
import "game_play.dart";

class finalMac extends StatelessWidget {
  finalMac({
    Key? key,
    required this.teamCode,
    required this.yourTeamCode,
  }) : super(key: key);

  final int teamCode;
  final int yourTeamCode;
  int f1_goals = 0;
  int f2_goals = 0;

  // 0 = ARG, 1 = POR, 2 = BRA

  finalSkor(
    double x,
    double y,
    double z,
    double a,
  ) {
    double t1ATTPower = x;
    double t1DEFPower = y;
    double t2ATTPower = z;
    double t2DEFPower = a;
    debugPrint("$t1ATTPower, $t1DEFPower, $t2ATTPower, $t2DEFPower");

    for (int i = 0; i < 10; i++) {
      int powers = t1ATTPower.toInt() + t2ATTPower.toInt();
      int ihtimal = Random().nextInt(powers);
      debugPrint("______${i+1}. atak ve ihtimal : $ihtimal ve 1.takım güç : ${t1ATTPower.toInt()}");
      if (ihtimal < t1ATTPower) {
        int vspowers = t1ATTPower.toInt() + t2DEFPower.toInt() + t2DEFPower.toInt() ;
        int gol_ihtimal = Random().nextInt(vspowers);
        debugPrint("1.takım atakta ihtimal : $gol_ihtimal ve güç : ${t1ATTPower.toInt()} range : $vspowers");
        if (gol_ihtimal < t1ATTPower) {
          f1_goals++;
          debugPrint("1.takım gol attı. Skor :$f1_goals - $f2_goals");
          
        }
      } else {
        int vspowers = t2ATTPower.toInt() + t1DEFPower.toInt() + t1DEFPower.toInt();
        int gol_ihtimal = Random().nextInt(vspowers);
        debugPrint("2.takım atakta ihtimal : $gol_ihtimal ve güç : ${t2ATTPower.toInt()} range : $vspowers");
        if (gol_ihtimal < t2ATTPower) {
          f2_goals++;
          debugPrint("2.takım gol attı. Skor :$f1_goals - $f2_goals");
        }
      }
    }

    if (f1_goals == f2_goals) f1_goals++;

    return "$f1_goals vs $f2_goals";
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
            "FINAL",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: yourTeamCode == 10
          ? eslesmeArg(context)
          : yourTeamCode == 11
              ? eslesmePor(context)
              : yourTeamCode == 12
                  ? eslesmeBra(context)
                  : eslesmeGer(context),
    );
  }

  Container eslesmeGer(BuildContext context) {
    switch (teamCode) {
      case 0:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      case 1:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      case 2:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      default:
        return Container(
          child: Text(" vs "),
        );
    }
  }

  Container eslesmeBra(BuildContext context) {
    switch (teamCode) {
      case 0:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      case 1:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      case 2:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      default:
        return Container(
          child: Text(" vs "),
        );
    }
  }

  Container eslesmePor(BuildContext context) {
    switch (teamCode) {
      case 0:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      case 1:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      case 2:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, ArgATTPower,
                                    ArgDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/ARG.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      default:
        return Container(
          child: Text(" vs "),
        );
    }
  }

  Container eslesmeArg(BuildContext context) {
    switch (teamCode) {
      case 0:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/POR.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(PorATTPower, PorDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      case 1:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/BRA.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(BraATTPower, BraDEFPower, GerATTPower,
                                    GerDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/GER.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      case 2:
        if (you_goals > opp_goals) {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/ARG.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(ArgATTPower, ArgDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/ARG.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        } else {
          if (t1_goals > t2_goals) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, PorATTPower,
                                    PorDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/POR.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/POR.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/FifaWC2022/GER.png",
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                finalSkor(GerATTPower, GerDEFPower, BraATTPower,
                                    BraDEFPower),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Image.asset("assets/FifaWC2022/BRA.png")),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  if (f1_goals > f2_goals)
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/GER.png"))
                  else
                    Expanded(
                        flex: 3,
                        child: Image.asset("assets/FifaWC2022/BRA.png")),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "WINNER",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                ],
              ),
            );
          }
        }

      default:
        return Container(
          child: Text(" vs "),
        );
    }
  }
}
