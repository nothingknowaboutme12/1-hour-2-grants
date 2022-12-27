import 'package:cdb/Widget/cutom_listTile.dart';
import 'package:cdb/Widget/text_fields.dart';
import 'package:flutter/material.dart';

class Reasearch extends StatefulWidget {
  Size size;
  TextEditingController PublicianName;
  TextEditingController NPublicianName;
  TextEditingController PQUOTE;
  TextEditingController NQUOTE;
  TextEditingController CLGIStatement;

  Reasearch({
    Key? key,
    required this.size,
    required this.PublicianName,
    required this.NPublicianName,
    required this.PQUOTE,
    required this.NQUOTE,
    required this.CLGIStatement,
  }) : super(key: key);

  @override
  State<Reasearch> createState() => _ReasearchState();
}

class _ReasearchState extends State<Reasearch> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CutsomListTile(
          size: widget.size,
          status: status,
          text: "SUPPORTING RESEARCH & STATISTICS",
          onTap: () {
            setState(() {
              status = !status;
            });
          },
        ),
        status
            ? Container(
                margin: EdgeInsets.all(widget.size.height / 80),
                child: Column(
                  children: [
                    customtextfield2(
                        size: widget.size,
                        controller: widget.CLGIStatement,
                        text:
                            "ENTER CURRENT LOCAL GOVERNMENT INITIATIVES STATEMENT",
                        hinttext: "Type here..."),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: customtextfield2(
                              size: widget.size,
                              controller: widget.PublicianName,
                              text: "ENTER LOCAL PUBLICATION NAME",
                              hinttext: "Type here..."),
                        ),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),
                        Expanded(
                          child: customtextfield2(
                              size: widget.size,
                              controller: widget.PQUOTE,
                              text: "ENTER LOCAL PUBLICATION QUOTE",
                              hinttext: "Type here..."),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: customtextfield2(
                              size: widget.size,
                              controller: widget.NPublicianName,
                              text: "ENTER NATIONAL PUBLICATION NAME",
                              hinttext: "Type here..."),
                        ),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),
                        Expanded(
                          child: customtextfield2(
                              size: widget.size,
                              controller: widget.NQUOTE,
                              text: "ENTER NATIONAL PUBLICATION QUOTE",
                              hinttext: "Type here..."),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
