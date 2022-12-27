import 'package:cdb/Utiles/utilies.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  Dropdown(
      {Key? key,
      required this.size,
      required this.item,
      required this.controller,
      required this.label})
      : super(key: key);
  final Size size;
  final String label;
  TextEditingController controller;
  List<String> item;
  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  void initState() {
    widget.controller.text = "Please Select";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            widget.label,
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
            items: widget.item
                .map<DropdownMenuItem<String>>((menu) => DropdownMenuItem(
                      child: Text(menu),
                      value: menu,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                widget.controller.text = value.toString();
              });
            },
            value: widget.controller.text,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.black)),
        ),
      ],
    );
  }
}
