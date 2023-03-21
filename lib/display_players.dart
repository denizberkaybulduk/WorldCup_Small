import 'package:flutter/material.dart';
import 'germany.dart';

class displayPlayers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 56, 56),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Germany"),
              Image.asset(
                "assets/FifaWC2022/GER.png",
                height: 50,
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 32, 32, 32)),
      body: ListView.builder(
        itemBuilder: (context, itemCount) {
          return Card(
            color: Color.fromARGB(255, 26, 26, 26),
            
            child: ListTile(
                trailing: Text(
                    "ATT " +
                        Germany[itemCount].ATT.toString() +
                        " " +
                        "DEF " +
                        Germany[itemCount].DEF.toString(),
                    style: TextStyle(
                        color: Color(0xffFFCB09),
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold)),
                title: Text(
                  Germany[itemCount].name,
                  style: TextStyle(
                      color: Color.fromARGB(255, 248, 233, 210),
                      fontWeight: FontWeight.bold),
                )),
          );
        },
        itemCount: 11,
      ),
    );
  }
}

class displayPlayersBRA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1187D1),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Brasil"),
              Image.asset(
                "assets/FifaWC2022/BRA.png",
                height: 50,
              ),
            ],
          ),
          backgroundColor: Color(0xff193375)),
      body: ListView.builder(
        itemBuilder: (context, itemCount) {
          return Card(
            color: Color(0xff193375),
            child: ListTile(
                trailing: Text(
                    "ATT " +
                        Brasil[itemCount].ATT.toString() +
                        " " +
                        "DEF " +
                        Brasil[itemCount].DEF.toString(),
                    style: TextStyle(
                        color: Color(0xff1FAE48),
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold)),
                title: Text(
                  Brasil[itemCount].name,
                  style: TextStyle(
                      color: Color.fromARGB(255, 248, 233, 210),
                      fontWeight: FontWeight.bold),
                )),
          );
        },
        itemCount: 11,
      ),
    );
  }
}

class displayPlayersPOR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 117, 109),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Portugal"),
              Image.asset(
                "assets/FifaWC2022/POR.png",
                height: 50,
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 105, 15, 9)),
      body: ListView.builder(
        itemBuilder: (context, itemCount) {
          return Card(
            color: Color.fromARGB(255, 105, 15, 9),
            child: ListTile(
                trailing: Text(
                    "ATT " +
                        Portugal[itemCount].ATT.toString() +
                        " " +
                        "DEF " +
                        Portugal[itemCount].DEF.toString(),
                    style: TextStyle(
                        color: Color.fromARGB(255, 31, 134, 126),
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold)),
                title: Text(
                  Portugal[itemCount].name,
                  style: TextStyle(
                      color: Color.fromARGB(255, 248, 233, 210),
                      fontWeight: FontWeight.bold),
                )),
          );
        },
        itemCount: 11,
      ),
    );
  }
}

class displayPlayersARG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 194, 240),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Argentinaaa"),
              Image.asset(
                "assets/FifaWC2022/ARG.png",
                height: 50,
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 25, 94, 179)),
      body: ListView.builder(
        itemBuilder: (context, itemCount) {
          return Card(
            color: Color.fromARGB(255, 25, 94, 179),
            child: ListTile(
                trailing: Text(
                    "ATT " +
                        Argentina[itemCount].ATT.toString() +
                        " " +
                        "DEF " +
                        Argentina[itemCount].DEF.toString(),
                    style: TextStyle(
                        color: Color(0xffD5B048),
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold)),
                title: Text(
                  Argentina[itemCount].name,
                  style: TextStyle(
                      color: Color.fromARGB(255, 248, 233, 210),
                      fontWeight: FontWeight.bold),
                )),
          );
        },
        itemCount: 11,
      ),
    );
  }
}
