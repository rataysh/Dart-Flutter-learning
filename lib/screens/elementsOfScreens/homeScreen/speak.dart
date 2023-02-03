import 'package:flutter/material.dart';
import '../../../const/ref.dart';


class SpeakCloud extends StatefulWidget {
  const SpeakCloud({super.key});

  @override
  State<SpeakCloud> createState() => _SpeakCloudState();
}

class _SpeakCloudState extends State<SpeakCloud> {
  @override
  Widget build(BuildContext context) {
    return
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            alignment: Alignment.bottomCenter,
            pathSpeakImage,
            fit: BoxFit.scaleDown,
            width: 150,
          ),
          const Text(
            'Давай \n играть!',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'AbhayaLibre',
              fontSize: 18.0,),
          ),
        ],
      );
  }
}







