import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RABBIT",
      home: Scaffold(
          appBar: AppBar(
            title: Text("RABBIT"),
            centerTitle: true,
            backgroundColor: Color(0xFFEAFED0),
            toolbarOpacity: 1,
            toolbarHeight: 0,
          ),
          body: SizedBox.expand(
            child: Container(
              color: Color(0xFFEAFED0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // padding: EdgeInsets.all(50),
                        // color: Colors.red,
                        child: SvgPicture.asset(
                          "assets/images/cloudLeft.svg",
                          width: 200,
                          ),
                      ),
                      Container(
                        child: SvgPicture.asset(
                          "assets/images/cloudRight.svg",
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(50),
                    color: Colors.green,
                    child: Text("Test_2"),
                  ),
                  Container(
                    padding: EdgeInsets.all(80),
                    color: Colors.blue,
                    child: Text("Test_3"),
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    color: Colors.blue,
                    child: Text("Test_4"),
                  ),
                ],
              ),
            ),
          ),
          // Align(
          //   child: SvgPicture.asset(
          //     "assets/images/bodyRab.svg",
          //     width: 180,
          //   ),
          //   alignment: Alignment(0, 1.05),
          // ),

          // SvgPicture.asset("assets/images/name.svg"),

          // Text(
          //   "Centr in my App",
          //   style: TextStyle(
          //     fontSize: 30.0,
          //     fontWeight: FontWeight.bold,
          //     // color: Colors.black87,
          //   ),
          // ),
          // backgroundColor: Color(0xFFEAFED0),
          // backgroundColor: Color.fromRGBO(234, 254, 208, 1),

          // floatingActionButton: FloatingActionButton(
          //   onPressed: null,
          //   child: Text("Add"),
          //   backgroundColor: Colors.blue[800],
          // ),
          // bottomNavigationBar: BottomNavigationBar(),
          ),
    );
  }
}
