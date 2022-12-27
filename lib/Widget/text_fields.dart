import 'package:flutter/material.dart';

class customtextfield2 extends StatelessWidget {
  customtextfield2({
    Key? key,
    required this.size,
    required this.controller,
    required this.text,
    this.selector = false,
    this.length = 200,
    required this.hinttext,
  }) : super(key: key);

  final Size size;
  final String text;
  final String hinttext;
  bool selector;
  int length;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      // width: double.infinity,
      // margin: selector ? EdgeInsets.only(left: 10) : null,
      // height: size.height / 8,
      height: size.width > 600 ? size.height / 6 : size.height / 8,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: selector
                ? null
                : Text(
                    text,
                    style: TextStyle(
                      fontWeight:
                          size.width > 600 ? FontWeight.w800 : FontWeight.w500,
                      fontSize: size.width > 600 ? 12 : 8,
                      letterSpacing: size.width > 600 ? 1.2 : null,
                      color: Colors.black87,
                    ),
                  ),
          ),
          SizedBox(
            height: size.width > 600 ? 4 : 4,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.multiline,
              maxLines: selector ? 1 : 3,
              // enabled: !selector,
              maxLength: length,
              decoration: InputDecoration(
                hintText: hinttext,
                fillColor: Colors.grey.shade200,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 5, vertical: size.width > 600 ? 5 : 0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class labeltextfield extends StatelessWidget {
  labeltextfield({
    Key? key,
    required this.size,
    required this.textEditingController,
    required this.text,
    this.enabled = true,
    this.isEmail = false,
    this.isBudget = false,
  }) : super(key: key);

  final Size size;
  bool isEmail;
  bool isBudget;
  bool enabled;
  final String text;
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              text,
              style: TextStyle(
                fontWeight:
                    size.width > 600 ? FontWeight.w800 : FontWeight.w500,
                fontSize: size.width > 600 ? 12 : 8,
                letterSpacing: size.width > 600 ? 1.2 : null,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          SizedBox(
            height: size.height / 15,
            child: TextFormField(
              maxLines: 1,
              controller: textEditingController,
              style: TextStyle(
                fontSize: 14,
              ),
              // maxLength: 20,
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                enabled: enabled,
                fillColor: Colors.grey.shade200,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          isEmail
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                  child: Text(
                    "example@example.com",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                )
              : SizedBox(
                  height: 0,
                ),
          isBudget
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                  child: Text(
                    "\$",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                )
              : SizedBox(
                  height: 0,
                ),
          SizedBox(
            height: isEmail ? size.height / 50 : size.height / 25,
          ),
        ],
      ),
    );
  }
}
