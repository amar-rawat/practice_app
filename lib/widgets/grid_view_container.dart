import 'dart:math';
import 'package:flutter/material.dart';
import 'package:practice_app/consts/colors.dart';

class GridViewContainer extends StatelessWidget {
  GridViewContainer({super.key});

  // Color finalColor =
  //     NeonColors.colorList[Random().nextInt(NeonColors.colorList.length)];
  // Stream getColor() async* {
  //   while (true) {
  //     await Future.delayed(Duration(milliseconds: 500));
  //     finalColor =
  //         NeonColors.colorList[Random().nextInt(NeonColors.colorList.length)];
  //     yield finalColor;
  //   }
  // }

  Stream streamer() async* {
    while (true) {
      await Future.delayed(Duration(milliseconds: 500));
      yield null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: streamer(),
        builder: (context, snapshot) => Container(
          height: MediaQuery.of(context).size.width * 0.4,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  blurRadius: 20,
                  spreadRadius: 5),
              BoxShadow(
                color: Colors.white.withOpacity(0.8),
                blurRadius: 20,
                spreadRadius: -5,
              ),
            ],
            border: Border.all(width: 5, color: Colors.white),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(MediaQuery.of(context).size.width * 0.4),
              // topLeft: Radius.circular(MediaQuery.of(context).size.width * 0.2),
              // bottomRight:
              //     Radius.circular(MediaQuery.of(context).size.width * 0.2),
            ),
          ),
        ),
      ),
    );
  }
}
