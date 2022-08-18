import 'package:flutter/material.dart';
import '../const/const.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RABBIT",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("RABBIT"),
          centerTitle: true,
          backgroundColor: backgroundMain,
          toolbarOpacity: 1,
          toolbarHeight: 0,
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox.expand(
              child: Container(
                color: backgroundMain,
              ),
            ),
            SizedBox.expand(
              child: Align(
                alignment: const Alignment(0, 1),
                child: Opacity(
                  opacity: 0.6,
                  child: Image.asset(pathBackgroundImage),
                ),
              ),
            ),
            SizedBox.expand(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(pathCloudLeftImage),
                          ),
                          Container(
                            child: Image.asset(pathCloudRightImage),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset(pathNameImage),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5.0),
                            child: ElevatedButton(
                              style: mainMenuButtonStyle,
                              onPressed: () {},
                              child: const Text(
                                'Новая игра',
                                style: mainMenuButtonTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            child: ElevatedButton(
                              style: mainMenuButtonStyle,
                              onPressed: () {},
                              child: const Text(
                                'Темы',
                                style: mainMenuButtonTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            child: ElevatedButton(
                              style: mainMenuButtonStyle,
                              onPressed: () {},
                              child: const Text(
                                'Правила',
                                style: mainMenuButtonTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.skew(0, 0.06),
                        child: Image.asset(pathBodyRabImage),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


