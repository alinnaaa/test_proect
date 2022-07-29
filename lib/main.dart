import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_proect_1/Pages/game.dart';
import 'package:test_proect_1/Pages/pic.dart';
import 'package:test_proect_1/theme/theme.dart';

import 'Pages/settings.dart';
import 'components/logo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:
          //PicPage(),
          MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Image.network(
          'https://31.media.tumblr.com/1768ba0882b2ca979b9de889ad2bfb61/tumblr_ni85tdmcUw1twkrf5o1_1280.gif',
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
        ));
  }
}

double _volume = 0.0;

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        // lam box decoration a rang ayay ba scafold aka
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //  stops: [0.1, 0.65],
          colors: [
            Colors.blue,
            Colors.red,
          ],
        ),
      ),
      //////////////////////////////////////////////////////////////////
      child: Column(
        children: [
          Flexible(
              flex: 1,
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Tic Tac Toe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 65,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DancingScript'),
                    ),
                    /////////////////////////////////////////////////////////////////
                    Logo(),

                    // danany logo
                    SizedBox(height: 100),
////////////////////////////////////////////////////////////////////////////////////
                    ///button 1
                    GestureDetector(
                      onTap: () {
                        //    boardService.gameMode$.add(GameMode.Solo);
                        //    soundService.playSound('click');

                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => PicPage(),
                          ),
                        );
                      }, // la regay amawa containner akaman krd ba on tap
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            BoxShadow(color: Colors.white),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "single player".toUpperCase(),
                            style: TextStyle(
                                color: Colors.black.withOpacity(.8),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    //////////////// //////////////////
                    SizedBox(height: 30),

                    /// ////////////////////////////////button 2
                    GestureDetector(
                      onTap: () {
                        //    boardService.gameMode$.add(GameMode.Solo);
                        //    soundService.playSound('click');

                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => SettingsPage(),
                          ),
                        );
                      }, //
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            BoxShadow(color: Colors.white),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "with a friend".toUpperCase(),
                            style: TextStyle(
                                color: Colors.black.withOpacity(.8),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
////////////////////////////////////////////////////////////////////////////////////
                    SizedBox(height: 80),
                    IconButton(
                      iconSize: 50.0,
                      color: Colors.white,
                      icon: new Icon(Icons.settings),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => SettingsPage(),
                          ),
                        );
                      },
                    )
                  ]))
        ],
      ),
    ));
  }
}
