import 'package:cdb/Utiles/utilies.dart';
import 'package:cdb/Widget/cutom_listTile.dart';
import 'package:cdb/Widget/dropdown_button.dart';
import 'package:cdb/Widget/text_fields.dart';
import 'package:flutter/material.dart';

class GeneralInfo extends StatefulWidget {
  Size size;
  String imagepath;
  TextEditingController OrganizationState;
  TextEditingController establishedYear;
  TextEditingController yearofactive;
  TextEditingController OrganiztionName;
  TextEditingController EdfirstName;
  TextEditingController EdlastName;
  TextEditingController EdBio;
  TextEditingController EdPhone;
  TextEditingController EdEmail;
  TextEditingController GcPhone;
  TextEditingController GcEmail;
  TextEditingController PdFirstName;
  TextEditingController PdLastName;
  TextEditingController PdBio;
  TextEditingController PcFirstName;
  TextEditingController PcLastName;
  TextEditingController PcBio;
  void Function()? selectImageFun;
  void Function()? CrossImageFun;
  GeneralInfo({
    Key? key,
    required this.imagepath,
    required this.size,
    required this.OrganizationState,
    required this.establishedYear,
    required this.yearofactive,
    required this.OrganiztionName,
    required this.EdfirstName,
    required this.EdlastName,
    required this.EdBio,
    required this.EdPhone,
    required this.EdEmail,
    required this.GcPhone,
    required this.GcEmail,
    required this.PdFirstName,
    required this.PdLastName,
    required this.PdBio,
    required this.PcFirstName,
    required this.PcLastName,
    required this.PcBio,
    required this.selectImageFun,
    required this.CrossImageFun,
  }) : super(key: key);

  @override
  State<GeneralInfo> createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {
  @override
  void initState() {
    widget.OrganizationState.text = "Please Select";
    super.initState();
  }

  bool status = false;

  // }
  @override
  void dispose() {
    // widget.OrganiztionName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Image path in genreal path page ${widget.imagepath}");
    return Column(children: [
      CutsomListTile(
        size: widget.size,
        onTap: () {
          setState(() {
            status = !status;
          });
        },
        status: status,
        text: "GENERAL INFORMATION",
      ),
      status
          ? Container(
              // color: Colors.red,
              margin: EdgeInsets.all(widget.size.height / 80),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ENTER LOGO",
                              style: TextStyle(
                                fontWeight: widget.size.width > 600
                                    ? FontWeight.w800
                                    : FontWeight.w500,
                                fontSize: widget.size.width > 600 ? 14 : 10,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              height: widget.size.width > 600 ? 4 : 1,
                            ),
                            ElevatedButton(
                              onPressed: widget.selectImageFun,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: listtilecolor,
                                padding: EdgeInsets.symmetric(
                                  vertical: widget.size.width > 600 ? 17 : 12,
                                  horizontal: widget.size.width > 600 ? 27 : 20,
                                ),
                              ),
                              child: Text(
                                "Browse Files",
                                style: TextStyle(
                                  fontWeight: widget.size.width > 600
                                      ? FontWeight.w800
                                      : FontWeight.w500,
                                  fontSize: widget.size.width > 600 ? 16 : 12,
                                  letterSpacing:
                                      widget.size.width > 600 ? 1.2 : null,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: widget.size.height / 120,
                            // ),
                            widget.imagepath.isNotEmpty
                                ? Container(
                                    height: widget.size.height / 25,
                                    width: widget.size.width / 3.3,
                                    padding: EdgeInsets.only(
                                        left: widget.size.width / 80),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "logo." +
                                              widget.imagepath
                                                  .split('.')
                                                  .last
                                                  .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        IconButton(
                                            hoverColor: Colors.white,
                                            padding: EdgeInsets.zero,
                                            splashColor: Colors.transparent,
                                            onPressed: widget.CrossImageFun,
                                            icon: Icon(
                                              Icons.backspace,
                                              color: Colors.grey.shade400,
                                            ))
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(2)),
                                  )
                                : SizedBox(
                                    height: 0,
                                    width: 0,
                                  ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: widget.size.width / 10,
                      ),
                      labeltextfield(
                        size: widget.size,
                        text: "ENTER ORGANIZATION NAME",
                        textEditingController: widget.OrganiztionName,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: widget.size.height / 25,
                  ),
                  Row(
                    children: [
                      labeltextfield(
                          size: widget.size,
                          textEditingController: widget.EdfirstName,
                          text: "ENTER EXECUTIVE DIRECTOR FIRST NAME"),
                      SizedBox(
                        width: widget.size.width / 20,
                      ),
                      labeltextfield(
                          size: widget.size,
                          textEditingController: widget.EdlastName,
                          text: "ENTER EXECUTIVE DIRECTOR LAST NAME"),
                    ],
                  ),
                  customtextfield2(
                    size: widget.size,
                    hinttext: "Type here...",
                    controller: widget.EdBio,
                    text: "ENTER EXECUTIVE DIRECTOR BIO",
                  ),
                  SizedBox(
                    height: widget.size.height / 25,
                  ),
                  Row(
                    children: [
                      labeltextfield(
                          size: widget.size,
                          textEditingController: widget.EdPhone,
                          text: "ENTER EXECUTIVE DIRECTOR PHONE NUMBER"),
                      SizedBox(
                        width: widget.size.width / 20,
                      ),

                      labeltextfield(
                          size: widget.size,
                          isEmail: true,
                          textEditingController: widget.EdEmail,
                          text: "ENTER EXECUTIVE DIRECTOR EMAIL"),
                      // ),
                    ],
                  ),
                  const Divider(
                    color: listtilecolor,
                  ),
                  SizedBox(
                    height: widget.size.height / 25,
                  ),
                  Row(
                    children: [
                      labeltextfield(
                          size: widget.size,
                          textEditingController: widget.GcPhone,
                          text: "ENTER GRANT CONTACT PHONE NUMBER"),
                      SizedBox(
                        width: widget.size.width / 20,
                      ),

                      labeltextfield(
                          size: widget.size,
                          isEmail: true,
                          textEditingController: widget.GcEmail,
                          text: "ENTER GRANT CONTACT EMAIL"),
                      // ),
                    ],
                  ),
                  const Divider(
                    color: listtilecolor,
                  ),
                  SizedBox(
                    height: widget.size.height / 25,
                  ),
                  Row(
                    children: [
                      labeltextfield(
                          size: widget.size,
                          textEditingController: widget.PdFirstName,
                          text: "ENTER PROJECT DIRECTOR FIRST NAME"),
                      SizedBox(
                        width: widget.size.width / 20,
                      ),
                      labeltextfield(
                          size: widget.size,
                          textEditingController: widget.PdLastName,
                          text: "ENTER PROJECT DIRECTOR LAST NAME"),
                    ],
                  ),
                  customtextfield2(
                      size: widget.size,
                      hinttext: "Type here...",
                      controller: widget.PdBio,
                      text: "ENTER PROJECT DIRECTOR BIO"),
                  const Divider(
                    color: listtilecolor,
                  ),
                  SizedBox(
                    height: widget.size.height / 25,
                  ),
                  Row(
                    children: [
                      labeltextfield(
                          size: widget.size,
                          textEditingController: widget.PcFirstName,
                          text: "ENTER PROJECT COORDINATOR FIRST NAME"),
                      SizedBox(
                        width: widget.size.width / 20,
                      ),
                      labeltextfield(
                          size: widget.size,
                          textEditingController: widget.PcLastName,
                          text: "ENTER PROJECT COORDINATOR LAST NAME"),
                    ],
                  ),
                  customtextfield2(
                      size: widget.size,
                      hinttext: "Type here...",
                      controller: widget.PcBio,
                      text: "ENTER PROJECT COORDINATOR BIO"),
                  const Divider(
                    color: listtilecolor,
                  ),
                  SizedBox(
                    height: widget.size.height / 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Dropdown(
                          size: widget.size,
                          item: Countrylist,
                          controller: widget.OrganizationState,
                          label: "Select Organization State",
                        ),
                      ),
                      SizedBox(
                        width: widget.size.width / 20,
                      ),
                      Expanded(
                        child: Dropdown(
                          size: widget.size,
                          controller: widget.establishedYear,
                          item: EstabliedYearL,
                          label: "Select Year Established",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: widget.size.height / 25,
                  ),
                  Dropdown(
                      size: widget.size,
                      item: YearOfActiveL,
                      controller: widget.yearofactive,
                      label: "SELECT ORGANIZATION # OF YEARS ACTIVE"),
                  SizedBox(
                    height: widget.size.height / 25,
                  ),
                ],
              ),
            )
          : SizedBox(
              height: 0,
            ),
    ]);
  }
}
