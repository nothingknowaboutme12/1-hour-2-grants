import 'package:cdb/Widget/cutom_listTile.dart';
import 'package:cdb/Widget/text_fields.dart';
import 'package:flutter/material.dart';

class LocationStatus extends StatefulWidget {
  Size size;
  TextEditingController zipCode;
  LocationStatus({Key? key, required this.size, required this.zipCode})
      : super(key: key);

  @override
  State<LocationStatus> createState() => _LocationStatusState();
}

class _LocationStatusState extends State<LocationStatus> {
  @override
  void dispose() {
    widget.zipCode.dispose();
    super.dispose();
  }

  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CutsomListTile(
          size: widget.size,
          status: status,
          text: "PARTICIPANT LOCATION",
          onTap: () {
            setState(() {
              status = !status;
            });
          },
        ),
        status
            ? Container(
                margin: EdgeInsets.all(widget.size.height / 80),
                child: customtextfield2(
                  size: widget.size,
                  controller: widget.zipCode,
                  length: 20,
                  text:
                      "ENTER PARTICIPANT ZIP CODE, CITY, STATE, COUNTY, OR REGION",
                  hinttext: "Type Here...",
                ),
              )
            : SizedBox(
                height: 0,
              ),
      ],
    );
  }
}
