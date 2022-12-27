import 'package:cdb/Widget/cutom_listTile.dart';
import 'package:cdb/Widget/text_fields.dart';
import 'package:flutter/material.dart';

class Budget4 extends StatefulWidget {
  Size size;
  TextEditingController TotalBudget;
  TextEditingController AmountScured;
  TextEditingController AmountRequested;
  Budget4({
    Key? key,
    required this.size,
    required this.TotalBudget,
    required this.AmountScured,
    required this.AmountRequested,
  }) : super(key: key);

  @override
  State<Budget4> createState() => _Budget4State();
}

class _Budget4State extends State<Budget4> {
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
          text: "PROGRAM BUDGET PROJECTIONS",
        ),
        status
            ? Container(
                margin: EdgeInsets.all(widget.size.height / 80),
                child: Column(
                  children: [
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    customtextfield2(
                        size: widget.size,

                        // selector: true,
                        controller: widget.TotalBudget,
                        // length: ,
                        text: "ENTER TOTAL BUDGET SCURED",
                        hinttext: ""),
                    Row(
                      children: [
                        labeltextfield(
                            size: widget.size,
                            isBudget: true,
                            textEditingController: widget.AmountScured,
                            text: "ENTER AMOUNT SCURED"),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),
                        labeltextfield(
                            size: widget.size,
                            isBudget: true,
                            textEditingController: widget.AmountRequested,
                            text: "ENTER AMOUNT REQUESTED"),
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
