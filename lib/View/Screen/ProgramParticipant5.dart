import 'package:cdb/Utiles/utilies.dart';
import 'package:cdb/Widget/cutom_listTile.dart';
import 'package:flutter/material.dart';

class ProgramParticipant5 extends StatefulWidget {
  Size size;
  // TextEditingController cat;
  TextEditingController applicableCategory;
  ProgramParticipant5({
    Key? key,
    required this.size,
    required this.applicableCategory,
  }) : super(key: key);

  @override
  State<ProgramParticipant5> createState() => _ProgramParticipant5State();
}

class _ProgramParticipant5State extends State<ProgramParticipant5> {
  bool status = false;
  @override
  void dispose() {
    widget.applicableCategory.dispose();
    super.dispose();
  }

  @override
  void initState() {
    widget.applicableCategory.text = "Please Select";
    super.initState();
  }

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
          text: "PROGRAM PARTICIPANT DESCRIPTION",
        ),
        status
            ? Container(
                margin: EdgeInsets.all(widget.size.height / 80),
                child: Column(
                  children: [
                    SizedBox(
                      height: widget.size.height / 50,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "SELECT PROGRAM PARTICIPANTS FROM APPLICABLE CATEGORIES",
                            style: labelStyle,
                            // style: ,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: widget.size.height / 20,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,
                          child: DropdownButton(
                            isExpanded: true,
                            items: AplicabeCList.map<DropdownMenuItem<String>>(
                                (menu) => DropdownMenuItem(
                                      child: Text(menu),
                                      value: menu,
                                    )).toList(),
                            onChanged: (value) {
                              setState(() {
                                widget.applicableCategory.text =
                                    value.toString();
                              });
                            },
                            value: widget.applicableCategory.text,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.grey.shade200,
                              border: Border.all(color: Colors.black)),
                        ),
                      ],
                    ),
                    // Dropdown(
                    //   size: size,
                    //   item: AplicabeCList,
                    //   updatevalue: applicableCategory,
                    //   label:
                    //       "SELECT PROGRAM PARTICIPANTS FROM APPLICABLE CATEGORIES",
                    // ),
                    SizedBox(
                      height: widget.size.height / 50,
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
