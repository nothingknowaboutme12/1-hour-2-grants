import 'dart:math';

import 'package:cdb/Utiles/utilies.dart';
import 'package:flutter/material.dart';

class CutsomListTile extends StatelessWidget {
  CutsomListTile({
    Key? key,
    required this.size,
    this.status = false,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String text;
  void Function()? onTap;
  bool status;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 1.5, vertical: 1),
      color: Colors.transparent,
      // margin: EdgeInsets.zero,
      elevation: 2.0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        decoration: BoxDecoration(
          color: Color(0xff78CA7B),
          borderRadius: BorderRadius.circular(2),
        ),
        child: MaterialButton(
          onPressed: onTap,
          hoverColor: backgroundColor,
          splashColor: listtilecolor,
          child: Container(
            height: size.height / 13,
            width: double.infinity,
            padding:
                EdgeInsets.only(left: size.width / 20, right: size.width / 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  // scrollDirection: Axis.horizontal,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width > 600 ? 20 : 13,
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: status ? 180 * pi / 180 : 270 * pi / 180,
                  child: const Icon(
                    Icons.navigation,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
