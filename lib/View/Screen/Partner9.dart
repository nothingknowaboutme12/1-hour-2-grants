import 'package:cdb/Widget/cutom_listTile.dart';
import 'package:cdb/Widget/text_fields.dart';
import 'package:flutter/material.dart';

class Partner extends StatefulWidget {
  Size size;
  TextEditingController Partner1;
  TextEditingController Partner2;
  TextEditingController Partner3;
  TextEditingController Partner1Provides;
  TextEditingController Partner2Provides;
  TextEditingController Partner3Provides;
  Partner({
    Key? key,
    required this.size,
    required this.Partner1,
    required this.Partner2,
    required this.Partner3,
    required this.Partner1Provides,
    required this.Partner2Provides,
    required this.Partner3Provides,
  }) : super(key: key);

  @override
  State<Partner> createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  @override
  void dispose() {
    widget.Partner1.dispose();
    widget.Partner2.dispose();
    widget.Partner3.dispose();
    widget.Partner1Provides.dispose();
    widget.Partner2Provides.dispose();
    widget.Partner3Provides.dispose();
    super.dispose();
  }

  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CutsomListTile(
          size: widget.size,
          onTap: () {
            setState(() {
              status = !status;
            });
          },
          status: status,
          text: "PROGRAM PARTNERS",
        ),
        status
            ? Container(
                margin: EdgeInsets.all(widget.size.height / 80),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: customtextfield2(
                            size: widget.size,
                            length: 100,
                            controller: widget.Partner1,
                            hinttext: "Type here...",
                            text: "ENTER PARTNER 1",
                          ),
                        ),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),
                        Expanded(
                          child: customtextfield2(
                            size: widget.size,
                            length: 150,
                            controller: widget.Partner1Provides,
                            hinttext: "Type here...",
                            text: "ENTER WHAT PARTNER 1 PROVIDES",
                          ),
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
                            length: 100,
                            controller: widget.Partner2,
                            hinttext: "Type here...",
                            text: "ENTER PARTNER 2",
                          ),
                        ),
                        SizedBox(
                          width: widget.size.width / 25,
                        ),
                        Expanded(
                          child: customtextfield2(
                            size: widget.size,
                            length: 150,
                            controller: widget.Partner2Provides,
                            hinttext: "Type here...",
                            text: "ENTER WHAT PARTNER 2 PROVIDES",
                          ),
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
                            length: 100,
                            controller: widget.Partner3,
                            hinttext: "Type here...",
                            text: "ENTER PARTNER 3",
                          ),
                        ),
                        SizedBox(
                          width: widget.size.width / 25,
                        ),
                        Expanded(
                          child: customtextfield2(
                            size: widget.size,
                            length: 150,
                            controller: widget.Partner3Provides,
                            hinttext: "Type here...",
                            text: "ENTER WHAT PARTNER 3 PROVIDES",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : SizedBox(
                height: 0,
              ),
      ],
    );
  }
}
