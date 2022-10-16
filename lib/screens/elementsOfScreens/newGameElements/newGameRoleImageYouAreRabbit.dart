import 'package:flutter/cupertino.dart';
import '../../../const/ref.dart';


newGameRoleImageYouAreRabbit(context) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width / 2,
      alignment: Alignment.center,
      child: Image.asset(
        alignment: Alignment.center,
        pathYouAreNotRabbitImage,
        fit: BoxFit.scaleDown,
      ),
    ),
  );
}