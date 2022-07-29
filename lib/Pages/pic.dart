import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:test_proect_1/components/o.dart';
import 'package:test_proect_1/components/x.dart';
import 'package:test_proect_1/theme/theme.dart';

String groupValue = 'X';
void setGroupvalue(value) {
  //setState(() {
  groupValue = value;
  // });
}

class PicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PicPageState();
    void setGroupvalue(value) {}
  }
}

class PicPageState extends State<PicPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: NewGradientAppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          gradient: LinearGradient(colors: [Colors.blue, Colors.red])),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Pic Your Side",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: 'DancingScript',
                fontSize: 65,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => setGroupvalue('X'),
                      child: X(150, 30),
                    ),
                    Radio(
                      onChanged: (e) => setGroupvalue(e),
                      activeColor: MyTheme.orange,
                      value: 'X',
                      groupValue: groupValue,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "First",
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'DancingScript',
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
                ////////////////////////////////////////////////
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => setGroupvalue("O"),
                      child: O(130, MyTheme.orange),
                    ),
                    Radio(
                      onChanged: (e) => setGroupvalue(e),
                      activeColor: MyTheme.red,
                      value: 'O',
                      groupValue: groupValue,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.8, 0.8, 0.8, 0.8),
                      child: Text(
                        "Second",
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'DancingScript',
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            ///////////////////////////////////////////////////////////////
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x80000000),
                      blurRadius: 12.0,
                      offset: Offset(0.0, 5.0),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  )),
              child: Center(
                child: Text(
                  'CONTIUE',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
