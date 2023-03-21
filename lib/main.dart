import 'package:flutter/material.dart';
import 'package:wc_2022/argentina.dart';
import 'germany.dart';
import 'brasil.dart';
import 'models/players.dart';
import 'portugal.dart';

void main() {
  runApp(MyApp());
}

//color: Color.fromARGB(255, 216, 197, 221)

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<Player> Argentina = ArgentinaGenerate(Arg_Players, Arg_Code, Arg_ATT, Arg_DEF);
  List<Player> Portugal = PortugalGenerate(Por_Players, Por_Code, Por_ATT, Por_DEF);
  List<Player> Brasil = BrasilGenerate(Bra_Players, Bra_Code, Bra_ATT, Bra_DEF);
  List<Player> Germany = GermanyGenerate(Ger_Players, Ger_Code, Ger_ATT, Ger_DEF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 40, color: Color.fromARGB(255, 216, 197, 221))),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 133, 93, 143),
      appBar: AppBar(
        backgroundColor: Color(0xff572564),
        title: Center(
          child: Text(
            "SEMI FINALS",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.fromLTRB(60, 30, 60, 30),
              child: Image.asset("assets/FifaWC2022/FWC.png"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 70,
                  padding: EdgeInsets.all(0),
                  icon: Image.asset("assets/FifaWC2022/ARG.png"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ArgGamePlay()));
                  },
                ),
                IconButton(
                  iconSize: 70,
                  padding: EdgeInsets.all(0),
                  icon: Image.asset("assets/FifaWC2022/POR.png"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PorGamePlay()));
                  },
                ),
                IconButton(
                  iconSize: 70,
                  padding: EdgeInsets.all(0),
                  icon: Image.asset("assets/FifaWC2022/BRA.png"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BraGamePlay()));
                  },
                ),
                IconButton(
                  iconSize: 70,
                  padding: EdgeInsets.all(0),
                  icon: Image.asset("assets/FifaWC2022/GER.png"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GerGamePlay()));
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "TAKIM SEÇİNİZ",
                  style: Theme.of(context).textTheme.headline1,
                )),
          ),
        ],
      ),
    );
  }
}


