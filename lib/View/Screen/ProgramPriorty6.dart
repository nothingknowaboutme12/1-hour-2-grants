import 'package:cdb/Utiles/utilies.dart';
import 'package:cdb/Widget/cutom_listTile.dart';
import 'package:cdb/Widget/dropdown_button.dart';
import 'package:flutter/material.dart';

class Participant6 extends StatefulWidget {
  Size size;
  TextEditingController programpriorty;
  Participant6({Key? key, required this.size, required this.programpriorty})
      : super(key: key);

  @override
  State<Participant6> createState() => _Participant6State();
}

class _Participant6State extends State<Participant6> {
  bool status = false;

  @override
  void initState() {
    widget.programpriorty.text = "Please Select";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CutsomListTile(
        size: widget.size,
        onTap: () {
          setState(() {
            status = !status;
          });
        },
        status: status,
        text: "PROGRAM PRIORITY",
      ),
      status
          ? Container(
              margin: EdgeInsets.all(widget.size.height / 80),
              child: Column(
                children: [
                  SizedBox(
                    height: widget.size.height / 50,
                  ),
                  Dropdown(
                      size: widget.size,
                      item: ProgramCategoryL,
                      controller: widget.programpriorty,
                      label: "SELECT PROGRAM PRIORITY")
                ],
              ),
            )
          : SizedBox(
              height: 0,
            ),
    ]);
  }
}
