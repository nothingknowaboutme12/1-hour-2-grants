import 'package:flutter/material.dart';

class CLayout extends StatelessWidget {
  const CLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.WebScreenLayout})
      : super(key: key);
  final Widget mobileScreenLayout;
  final Widget WebScreenLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contraint) {
        if (contraint.maxWidth > 600) {
          return WebScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}
