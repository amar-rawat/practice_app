import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 247, 254),
          border: Border.all(color: Colors.blue, width: 1.5),
          borderRadius: BorderRadius.circular(4)),
      height: 84,
      width: 690,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 6, left: 8),
              child: SvgPicture.asset(
                'assets/images/information-circle.svg',
                height: 25,
                width: 25,
                semanticsLabel: 'Info Icon',
                colorFilter:
                    const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 45),
              child: RichText(
                text: const TextSpan(style: TextStyle(height: 1.4), children: [
                  TextSpan(
                      text: 'Information:\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                  TextSpan(
                      text: 'Please Select Color from below',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w200))
                ]),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.close_rounded,
                  size: 25,
                )),
          )
        ],
      ),
    );
  }
}
