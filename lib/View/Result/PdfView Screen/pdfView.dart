import 'dart:typed_data';

import 'package:cdb/Utiles/Table/tables.dart';
import 'package:cdb/Utiles/utilies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfView extends StatelessWidget {
  PdfView({
    required this.OName,
    required this.EdFName,
    required this.EdLName,
    required this.EdBio,
    required this.EdNumber,
    required this.EdEmail,
    required this.GcNumber,
    required this.GcEmail,
    required this.PdFName,
    required this.PdLName,
    required this.PdBio,
    required this.PcFName,
    required this.PcLName,
    required this.PcBio,
    required this.OState,
    required this.yearEsatablished,
    required this.OActiveyear,
    required this.CLGIStatement,
    required this.GGFunder,
    required this.ProgramStatement,
    required this.MissionStatement,
    required this.GoalStatement,
    required this.OutComeStatement,
    required this.ImpactStatement,
    required this.StaticsStatement,
    required this.ProgramStatus,
    required this.ToalBudget,
    required this.AmountScrud,
    required this.AmountRequested,
    required this.ApplicableCategory,
    required this.ProgramCategory,
    required this.StateReigion,
    required this.Input1,
    required this.Input2,
    required this.Input3,
    required this.OutCome1,
    required this.OutCome2,
    required this.OutCome3,
    required this.Output1,
    required this.Output2,
    required this.Output3,
    required this.Measure1,
    required this.Measure2,
    required this.Measure3,
    required this.Verification1,
    required this.Verification2,
    required this.Verification3,
    required this.Partner1,
    required this.Partner2,
    required this.Partner3,
    required this.Partner1Provide,
    required this.Partner2Provide,
    required this.Partner3Provide,
    required this.image,
    required this.ProgramPeriorty,
    required this.NPName,
    required this.NPQuote,
  });
  String OName;
  String EdFName;
  String EdLName;
  String EdBio;
  String EdNumber;
  String EdEmail;
  String GcNumber;
  String GcEmail;
  String PdFName;
  String PdLName;
  String PdBio;
  String PcFName;
  String PcLName;
  String PcBio;
  String OState;
  String yearEsatablished;
  String OActiveyear;

  String CLGIStatement;

  String GGFunder;
  String ProgramStatement;
  String MissionStatement;
  String GoalStatement;
  String OutComeStatement;
  String ImpactStatement;
  String StaticsStatement;
  String ProgramStatus;
  String ToalBudget;
  String AmountRequested;
  String AmountScrud;
  String ApplicableCategory;
  String ProgramCategory;
  String StateReigion;
  String Input1;
  String Input2;
  String Input3;
  String Output1;
  String Output2;
  String Output3;
  String OutCome1;
  String OutCome2;
  String OutCome3;
  String Measure1;
  String Measure2;
  String Measure3;
  String Verification1;
  String Verification2;
  String Verification3;
  String Partner1;
  String Partner2;
  String Partner3;
  String Partner1Provide;
  String Partner2Provide;
  String Partner3Provide;
  String image; //
  String ProgramPeriorty;
  String NPName;
  String NPQuote;
  String PartnerShip = "partnership";
  pw.Text customString({
    required String text,
    double fontSize = 30,
    pw.FontWeight fontWeight = pw.FontWeight.bold,
  }) {
    return pw.Text(
      text,
      style: pw.TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        // fontWeight: pw.FontWeight,
      ),
    );
  }

  void _showPrintedToast(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Document printed successfully'),
      ),
    );
  }

  void _showSharedToast(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Document shared successfully'),
      ),
    );
  }

  Future<Uint8List> makePdf(Size size) async {
    final imageLogo = pw.MemoryImage(
        (await rootBundle.load('assets/logo.png')).buffer.asUint8List());
    final graphImage = pw.MemoryImage(
        (await rootBundle.load('assets/graph.png')).buffer.asUint8List());
    final budgetGraph = pw.MemoryImage(
        (await rootBundle.load('assets/budgetGraph.png')).buffer.asUint8List());
    // final providelogo = pw.MemoryImage(
    //   // (await rootBundle.load(image.path)).buffer.asUint8List(),
    //   size.width > 600
    //       ? (await rootBundle.load('assets/logo.png')).buffer.asUint8List()
    //       : File(image.path).readAsBytesSync(),
    // );

    final pdf = pw.Document();
    pdf.addPage(pw.Page(build: (context) {
      return pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        children: [
          pw.Spacer(),
          pw.Container(
            width: size.width > 600 ? 1000 : 900,
            height: 100,
            child: pw.Image(
              imageLogo,
              fit: pw.BoxFit.cover,
            ),
          ),
          pw.SizedBox(
            height: size.width > 600 ? size.height / 60 : size.height / 50,
          ),
          pw.Text("CDB GRANT TEMPLATE",
              style: pw.TextStyle(
                fontSize: 25,
                fontWeight: pw.FontWeight.normal,
                // fontWeight: pw.FontWeight.bold,
              )),
          pw.SizedBox(
            height: size.width > 600 ? size.height / 60 : size.height / 50,
          ),
          pw.Text("PREPARED ESPECIALLY FOR ",
              style: pw.TextStyle(
                fontSize: 15,
                fontStyle: pw.FontStyle.italic,
              )),
          pw.SizedBox(
            height: size.width > 600 ? size.height / 30 : size.height / 20,
          ),
          pw.Text(
            OName,
            style: pw.TextStyle(
              fontSize: 25,
              fontWeight: pw.FontWeight.bold,
            ),
          ),
          pw.SizedBox(
            height: size.width > 600 ? size.height / 30 : size.height / 20,
          ),
          pw.Container(
            width: size.width > 600 ? 400 : 300,
            height: 100,
            child: pw.Image(imageLogo, fit: pw.BoxFit.cover),
          ),
          pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 30 : size.height / 20,
                ),
                pw.Text("$EdFName $EdLName,Executive Director",
                    style: pw.TextStyle(
                      fontSize: 25,
                    )),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                pw.Text(
                  "Phone: $GcNumber",
                  style: pw.TextStyle(
                    fontSize: 25,
                  ),
                ),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                pw.Text("Email:$GcEmail",
                    style: pw.TextStyle(
                      fontSize: 25,

                      // fontWeight: pw.FontWeight,
                    )),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                pw.Align(
                  alignment: pw.Alignment.bottomRight,
                  // padding: pw.EdgeInsets.symmetric(horizontal: size.width / 80),
                  child: pw.Text(
                    "Draft Developer Dr. Barbara Wright",
                    style: pw.TextStyle(
                        fontSize: 20, fontWeight: pw.FontWeight.bold
                        // fontWeight: pw.FontWeight,
                        ),
                  ),
                ),
              ]),
          pw.Spacer(),
        ],
      );
    }));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Container(
          margin: pw.EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: pw.EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Spacer(),
                pw.Align(
                  alignment: pw.Alignment.center,
                  child: pw.Text(
                    OName,
                    style: pw.TextStyle(
                      fontSize: 25,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                pw.Align(
                  alignment: pw.Alignment.center,

                  child: customString(
                    text: "Table of contents",
                    // fontWeight: pw.FontWeight.bold,
                    fontSize: 25,
                  ), //
                ), //
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "EXECUTIVE SUMMARY", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(
                  text: "NEED OR PROBLEM STATEMENT",
                  fontSize: 20,
                  // fontWeight: pw.FontWeight.normal,
                ),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "PPROGRAM GOALS", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "PROGRAM IMPLEMENTATION", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "PROGRAM TIMELINE", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "PROGRAM EVALUATION", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "ORGANIZATIONAL MANAGEMENT", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),

                customString(text: "DESSIMINATION STATEMENT", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "SUSTAINABILITY STATEMENT", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(
                    text: "DIVERSITY, EQUITY, & INCLUSION STATEMENT",
                    fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "SAMPLE BUDGET", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),
                customString(text: "BONUS APPENDIX", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 50,
                ),

                pw.Spacer(),
              ]),
        );
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Spacer(),
              customString(text: "EXECUTIVE SUMMARY", fontSize: 20),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 60 : size.height / 50,
              ),
              customString(
                text:
                    " $OName is $OState nonprofit and 501c3 established in $yearEsatablished. The mission of $OName is to $MissionStatement.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                text:
                    " $ProgramStatus our program is critical for improving the lives of $ApplicableCategory experiencing $ProgramPeriorty. According to $NPName, $NPQuote.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The outcomes of the $ProgramStatement program will result in $OutCome1, $OutCome2, and $OutCome3 in the $StateReigion area.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "To accomplish those goals and outcomes, we have established collaborative partnerships with community, local, and state organizations such as $Partner1 providing $Partner1Provide, $Partner2 providing $Partner2Provide, and $Partner3 providing $Partner3Provide.",
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "We are excited about the prospect of partnering with you as we provide programs to improve the lives of those affected by $ProgramPeriorty and improve the community for all.",
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "The total cost of implementation of our $ProgramStatement program is $ToalBudget. Of this amount, $AmountScrud has already been committed through a combination of our existing operating budget and individual, local, state, or federal grant funders. ",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                text:
                    "Your grant of $AmountRequested will complete the funding we need to fully implement this program, and we are excited about the prospect of partnering with you. Thank you for your consideration of our request.",
                fontWeight: pw.FontWeight.normal,
                fontSize: 15,
              ),
              pw.Spacer(),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(height: size.height / 60),
              customString(
                text: "NEED OR PROBLEM STATEMENT",
                fontWeight: pw.FontWeight.bold,
                fontSize: 20,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "According to $NPName, $NPQuote. In, $OState area $CLGIStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "The program will provide the $ProgramPeriorty programs including $GoalStatement leading to a more self-sufficient community for all. $OName, Inc. is seeking to deliver a collaborative that networks with partners to provide our program which provides $ProgramPeriorty programs including $GoalStatement. The outcomes are expected to include $OutCome1, $OutCome2, and $Output3.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                text: "PROGRAM GOALS",
                fontSize: 20,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                text:
                    "The purpose and goals of $OName are in line with goals of the grant which are to $GGFunder, for participants in the program which promotes $ProgramPeriorty for $ApplicableCategory including $GoalStatement.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 80),
              customString(
                text:
                    "The expected outcomes include $OutComeStatement as described in the table below: ",
                fontWeight: pw.FontWeight.normal,
                fontSize: 15,
              ),
              pw.SizedBox(height: size.height / 60),
              pw.Row(children: [
                pw.Expanded(
                  child: headingtable(
                    size: size,
                    text: "Goals",
                  ),
                ),
                pw.Expanded(
                    // flex: 1,
                    fit: pw.FlexFit.tight,
                    child: headingtable(size: size, padd: 22, text: " "))
              ]),
              pw.Table(
                  defaultColumnWidth: pw.FixedColumnWidth(200),
                  border: pw.TableBorder(
                    verticalInside: pw.BorderSide(
                      color: PdfColors.black,
                    ),
                    left: pw.BorderSide(
                      color: PdfColors.black,
                    ),
                    top: pw.BorderSide(
                      color: PdfColors.black,
                    ),
                    bottom: pw.BorderSide(
                      color: PdfColors.black,
                    ),
                    right: pw.BorderSide(
                      color: PdfColors.black,
                    ),
                  ),
                  children: [
                    pw.TableRow(
                      children: [
                        paddedText(
                            text:
                                "$OName's will work with partners and stakeholders to assist those experiencing $ProgramPeriorty by providing $GoalStatement. The resulting outcome will result in $OutComeStatement for $ApplicableCategory in the $OState area. The resulting impact includes $ImpactStatement. ",
                            padd: 10,
                            fontWeight: pw.FontWeight.normal,
                            fontSize: 15),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                customString(
                                    text:
                                        "The $ProgramStatement is expected to provide the following outcomes:",
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.normal),
                                pw.SizedBox(height: size.height / 40),
                                customString(
                                    text: "PROGRAM IMPACT",
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.bold),
                                pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      "1.0 $OutCome1",
                                      "2.0 $OutCome2",
                                      "3.0 $OutCome3",
                                    ]
                                        .map((txt) => customString(
                                            text: txt,
                                            fontSize: 15,
                                            fontWeight: pw.FontWeight.normal))
                                        .toList()),
                                pw.SizedBox(height: size.height / 40),
                                customString(
                                    text: "PROGRAM IMPACT",
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.bold),

                                customString(
                                    text:
                                        "The resulting impact includes $ImpactStatement.",
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.normal),
                                pw.SizedBox(height: size.height / 60),
                                // )
                              ]),
                        ),
                      ],
                    )
                  ]),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(
                  text: "PROGRAM IMPLEMENTATION",
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The measures of the outputs include $Measure1, $Measure2, and $Measure3. The outcomes of the $ProgramStatement will result in $OutCome1, $OutCome2, and $OutCome3 in the $StateReigion area. The resulting impact includes $ImpactStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "PROGRAM TIMELINE",
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "$OName will follow the timeline below to accomplish the goals of grant.The key staff are the executive director and the program director. The program coordinator is listed because they will be responsible for the data entry for reporting. However, they will not be a part ofthe administrative team",
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15),
              pw.SizedBox(height: size.height / 60),
              headingtable(
                  size: size,
                  padd: 5,
                  fontSize: 15,
                  text: "Program Timeline & Person Responsible"),
              pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      paddedText(
                          text: "Quarter",
                          fontSize: 15,
                          padd: 5,
                          fontWeight: pw.FontWeight.bold),
                      paddedText(
                          text: "Program Year 1",
                          fontSize: 15,
                          padd: 5,
                          fontWeight: pw.FontWeight.bold),
                      paddedText(
                          text: "Person Responsible",
                          fontSize: 15,
                          padd: 5,
                          fontWeight: pw.FontWeight.bold),
                    ]),
                    pw.TableRow(children: [
                      pw.Container(
                        padding: pw.EdgeInsets.symmetric(horizontal: 7),
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.SizedBox(
                                height: size.height / 80,
                              ),
                              customString(
                                text: "Quarter 1",
                                fontSize: 12,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Location:",
                                fontSize: 12,
                              ),
                              // pw.SizedBox(height: size.height / 80),
                              customString(
                                text: "Secure & Prepare Site, If applicable",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Marketing Materials, If applicable",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Staffing:",
                                fontSize: 12,
                              ),
                              // pw.SizedBox(height: size.height / 80),
                              customString(
                                text: "Recruit",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Hire",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Train",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Program Participants:",
                                fontSize: 12,
                              ),
                              // pw.SizedBox(height: size.height / 80),
                              customString(
                                text: "Recruit",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Intake",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Case Management",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Evaluation:",
                                fontSize: 12,
                              ),
                              // pw.SizedBox(height: size.height / 80),
                              customString(
                                text: "Collect Data",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Analyze Data",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Prepare Reports",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 100),
                            ]),
                      ),
                      pw.Container(
                        padding: pw.EdgeInsets.symmetric(horizontal: 7),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                          children: [
                            "Executive & Advisory Board Meetings",
                            "Partner Meetings",
                            "Staff Recruitment,Hiring & Training",
                            "Volunteers Recruitment & Training",
                            "Program Implementation(Recruitment, Intake,& referrals as needed)",
                            "Monthly or Quarterly Evaluations & Quarterly Reports",
                          ]
                              .map((text) => paddedText(
                                    text: text,
                                    fontSize: 12,
                                    fontWeight: pw.FontWeight.normal,
                                    padd: 7,
                                  ))
                              .toList(),
                        ),
                      ),
                      pw.Container(
                          padding: pw.EdgeInsets.symmetric(horizontal: 7),
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                "$EdFName $EdLName",
                                "$PdFName $PdLName",
                                "$PcFName $PcLName",
                              ]
                                  .map((txt) => pw.Padding(
                                      padding: pw.EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 25,
                                      ),
                                      child: pw.Text(txt,
                                          style: pw.TextStyle(
                                            fontSize: 12,
                                          ))))
                                  .toList()))
                    ]),
                  ]),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                        padding: pw.EdgeInsets.symmetric(horizontal: 10),
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.SizedBox(
                                height: size.height / 80,
                              ),
                              customString(
                                text: "Quarter 2",
                                fontSize: 12,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Staffing:",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Ongoing PD Training         ",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Program Participants",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Case Management",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Evaluation",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Collect Data",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Analyze Data",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Prepare Reports",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 100),
                            ]),
                      ),
                      pw.Container(
                        padding: pw.EdgeInsets.symmetric(horizontal: 7),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                          children: [
                            "Executive & Advisory Board Meetings",
                            "Partner Meetings",
                            "Ongoing Monthly Staff PD Training & Meetings",
                            "Volunteers Recruitment & Training",
                            "Program Implementation(Recruitment, Intake,& referrals as needed)",
                            "Monthly or Quarterly Evaluations & Quarterly Reports",
                          ]
                              .map((text) => paddedText(
                                    text: text,
                                    fontSize: 12,
                                    fontWeight: pw.FontWeight.normal,
                                    padd: 7,
                                  ))
                              .toList(),
                        ),
                      ),
                      pw.Container(
                          padding: pw.EdgeInsets.symmetric(horizontal: 7),
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                "$EdFName $EdLName",
                                "$PdFName $PdLName",
                                "$PcFName $PcLName",
                              ]
                                  .map((txt) => pw.Padding(
                                      padding: pw.EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 25,
                                      ),
                                      child: pw.Text(txt,
                                          style: pw.TextStyle(
                                            fontSize: 12,
                                          ))))
                                  .toList()))
                    ]),
                  ]),
              pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                        padding: pw.EdgeInsets.symmetric(horizontal: 7),
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.SizedBox(
                                height: size.height / 80,
                              ),
                              customString(
                                text: "Quarter 3",
                                fontSize: 12,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Staffing:",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Ongoing PD Trainings & Meetings",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Program Participants",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Case Management",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Evaluation",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Collect Data",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Analyze Data",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Prepare Reports",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 100),
                            ]),
                      ),
                      pw.Container(
                        padding: pw.EdgeInsets.symmetric(horizontal: 7),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                          children: [
                            "Executive & Advisory Board Meetings",
                            "Partner Meetings",
                            "Ongoing Monthly Staff PD Training & Meetings",
                            "Volunteers Recruitment & Training",
                            "Program Implementation(Recruitment, Intake,& referrals as needed)",
                            "Monthly or Quarterly Evaluations & Quarterly Reports",
                          ]
                              .map((text) => paddedText(
                                    text: text,
                                    fontSize: 12,
                                    fontWeight: pw.FontWeight.normal,
                                    padd: 7,
                                  ))
                              .toList(),
                        ),
                      ),
                      pw.Container(
                          padding: pw.EdgeInsets.symmetric(horizontal: 7),
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                "$EdFName $EdLName",
                                "$PdFName $PdLName",
                                "$PcFName $PcLName",
                              ]
                                  .map((txt) => pw.Padding(
                                      padding: pw.EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 25,
                                      ),
                                      child: pw.Text(txt,
                                          style: pw.TextStyle(
                                            fontSize: 12,
                                          ))))
                                  .toList()))
                    ]),
                  ]),
              pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                        padding: pw.EdgeInsets.symmetric(horizontal: 7),
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.SizedBox(
                                height: size.height / 80,
                              ),
                              customString(
                                text: "Quarter 4",
                                fontSize: 12,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Staffing:",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Ongoing PD Trainings & Meetings",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Program Participants",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Case Management",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 60),
                              customString(
                                text: "Evaluation",
                                fontSize: 12,
                              ),
                              customString(
                                text: "Collect Data",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Analyze Data",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              customString(
                                text: "Prepare Reports",
                                fontSize: 12,
                                fontWeight: pw.FontWeight.normal,
                              ),
                              pw.SizedBox(height: size.height / 100),
                            ]),
                      ),
                      pw.Container(
                        padding: pw.EdgeInsets.symmetric(horizontal: 7),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                          children: [
                            "Executive & Advisory Board Meetings",
                            "Partner Meetings",
                            "Ongoing Monthly Staff PD Training & Meetings",
                            "Volunteers Recruitment & Training",
                            "Program Implementation(Recruitment, Intake,& referrals as needed)",
                            "Monthly or Quarterly Evaluations & Quarterly Reports",
                          ]
                              .map((text) => paddedText(
                                    text: text,
                                    fontSize: 12,
                                    fontWeight: pw.FontWeight.normal,
                                    padd: 7,
                                  ))
                              .toList(),
                        ),
                      ),
                      pw.Container(
                          padding: pw.EdgeInsets.symmetric(horizontal: 7),
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                "$EdFName $EdLName",
                                "$PdFName $PdLName",
                                "$PcFName $PcLName",
                              ]
                                  .map((txt) => pw.Padding(
                                      padding: pw.EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 25,
                                      ),
                                      child: pw.Text(txt,
                                          style: pw.TextStyle(
                                            fontSize: 12,
                                          ))))
                                  .toList()))
                    ]),
                  ]),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          customString(
              text: "PROGRAM EVALUATION",
              fontSize: 20,
              fontWeight: pw.FontWeight.bold),
          pw.SizedBox(
            height: size.height / 80,
          ),
          customString(
            text:
                "$OName will collect and report on the required performance measures. The measures used to collect the data are $Measure1, $Measure2, and $Measure3 by all participating agencies.  Each survey will be analyzed and reported on by the evaluator. The following table will show the relationship between the goal, evaluation, and the outcomes.",
            fontWeight: pw.FontWeight.normal,
            fontSize: 15,
          ),
          pw.SizedBox(
            height: size.height / 60,
          ),
          customString(
            text:
                "$OName’s executive director, $EdFName $EdLName, oversees the collection and reporting of data required for each performance measure. The measures used to collect the data include $Measure1, $Measure2, and $Measure3 by all participating agencies. All measures are verified individually or collectively by attendance records, pre & post surveys, or partner records. Each survey willbe analyzed and reported on by the evaluator. The following table will show the relationship between thegoal, evaluation, and outcomes. The Executive Director of the organization is $EdFName $EdLName.",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.SizedBox(
            height: size.height / 60,
          ),
          customString(
              fontWeight: pw.FontWeight.normal,
              fontSize: 15,
              text:
                  "The data will be tracked and accessed by an outside evaluator to ensure that disparities are reduced. The data-driven quality improvement process outcomes are also described in the table below:"),
          pw.SizedBox(
            height: size.height / 60,
          ),
          pw.Table(
              border: pw.TableBorder.all(color: PdfColors.black),
              children: [
                pw.TableRow(children: [
                  pw.Expanded(
                    child: paddedText(
                      text: "Goals",
                      fontSize: 15,
                      padd: 4,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Expanded(
                    child: paddedText(
                      text: "Inputs",
                      fontSize: 15,
                      padd: 4,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Expanded(
                    child: paddedText(
                      text: "Outputs/Activities",
                      fontSize: 15,
                      padd: 4,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Expanded(
                    child: paddedText(
                      text: "Evaluation/Measure",
                      fontSize: 15,
                      padd: 4,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Expanded(
                    child: paddedText(
                      text: "Outcomes & Impact",
                      fontSize: 15,
                      padd: 4,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ]),
              ]),
          pw.Table(
              border: pw.TableBorder.all(color: PdfColors.black),
              children: [
                pw.TableRow(children: [
                  pw.Expanded(
                    child: pw.Padding(
                      padding:
                          pw.EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: pw.Text(
                          "$OName's will work with partners and stakeholders to assist those experiencing $ProgramPeriorty by providing $GoalStatement.The resulting in $OutComeStatement for $ApplicableCategory in the $OState area.",
                          style: pw.TextStyle(
                            fontSize: 10,
                          )),
                    ),
                    flex: 1,
                  ),
                  pw.Expanded(
                    child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            child: pw.Text(
                              "1.0 ${Input1}",
                              style: pw.TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            child: pw.Text("2.0 ${Input2}",
                                style: pw.TextStyle(
                                  fontSize: 10,
                                )),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            child: pw.Text(
                              "3.0 ${Input3}",
                              style: pw.TextStyle(fontSize: 10),
                            ),
                          ),
                          pw.SizedBox(height: size.height / 80),
                          pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              child: pw.Text("Partners",
                                  style: pw.TextStyle(
                                      fontSize: 15,
                                      fontWeight: pw.FontWeight.bold))),
                          pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text(
                                  "Program Partners & What they provide.",
                                  style: pw.TextStyle(
                                    fontSize: 10,
                                  ))),
                          pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text(
                                  "1.0 $Partner1 providing $Partner1Provide",
                                  style: pw.TextStyle(fontSize: 10))),
                          pw.SizedBox(height: size.height / 120),
                          pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text(
                                  "2.0 $Partner2 providing $Partner2Provide",
                                  style: pw.TextStyle(fontSize: 10))),
                          pw.SizedBox(height: size.height / 120),
                          pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text(
                                  "3.0 $Partner3 providing $Partner3Provide",
                                  style: pw.TextStyle(fontSize: 10))),
                          pw.SizedBox(height: size.height / 120),
                        ]),
                    flex: 1,
                  ),
                  pw.Expanded(
                    child: pw.Column(
                      children: [
                        pw.Padding(
                            padding: pw.EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            child: pw.Text("1.0 $Output1",
                                style: pw.TextStyle(fontSize: 10))),
                        pw.SizedBox(
                          height: size.height / 120,
                        ),
                        pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: pw.Text(
                            "2.0 $Output2",
                            style: pw.TextStyle(fontSize: 10),
                          ),
                        ),
                        pw.SizedBox(
                          height: size.height / 120,
                        ),
                        pw.Padding(
                            padding: pw.EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            child: pw.Text("3.0 $Output3",
                                style: pw.TextStyle(fontSize: 10))),
                        pw.SizedBox(
                          height: size.height / 80,
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  pw.Expanded(
                      flex: 1,
                      child: pw.Column(children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 3),
                          child: pw.Text(
                              "The evaluation will be measured using the following instruments:",
                              style: pw.TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        pw.SizedBox(height: size.height / 60),
                        pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: pw.Text("1.0 $Measure1",
                              style: pw.TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        pw.SizedBox(
                          height: size.height / 120,
                        ),
                        pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: pw.Text("2.0 $Measure2",
                              style: pw.TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        pw.SizedBox(
                          height: size.height / 120,
                        ),
                        pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: pw.Text(
                            "3.0 $Measure3",
                            style: pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          height: size.height / 80,
                        )
                      ])),
                  pw.Expanded(
                    child: pw.Container(
                      margin:
                          pw.EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: pw.Column(children: [
                        pw.Text(
                            "The $ProgramStatement is expected toprovide the following outcomes: ",
                            style: pw.TextStyle(
                              fontSize: 10,
                            )),
                        pw.SizedBox(
                          height: size.height / 60,
                        ),
                        customString(
                            text: "PROGRAM OUTCOME",
                            fontSize: 10,
                            fontWeight: pw.FontWeight.bold),
                        pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: pw.Text("1.0 $OutCome1 ",
                              style: pw.TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        pw.SizedBox(
                          height: size.height / 120,
                        ),
                        pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: pw.Text("2.0 $OutCome2 ",
                              style: pw.TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        pw.SizedBox(
                          height: size.height / 120,
                        ),
                        pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: pw.Text("3.0 $OutCome3 ",
                              style: pw.TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        pw.SizedBox(height: size.height / 60),
                        customString(
                            text: "PROGRAM IMPACT",
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 10),
                        customString(
                            text:
                                "The resulting impact includes $ImpactStatement.",
                            fontWeight: pw.FontWeight.normal,
                            fontSize: 10),
                      ]),
                    ),
                  ),
                ]),
              ])
        ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(
                text: "ORGANIZATION MANAGEMENT",
                fontSize: 20,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "$OName has been in the community more than $OActiveyear years and have established linkages to the community including $PartnerShip with future collaborative including social and government service agencies as the need arise.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                text: "Key staff include $EdFName $EdLName and $EdBio $PdBio ",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              customString(
                text: "$PdBio",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              customString(
                text: "$PcBio",
                fontWeight: pw.FontWeight.normal,
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                text:
                    "All additional positions will be outsourced excluding the infrastructure positions. The outsourced positions include HR, Budget, Finance, Payroll, training, and support. All volunteers will be supervised by the project director",
                fontWeight: pw.FontWeight.normal,
                fontSize: 15,
              ),
              pw.SizedBox(height: size.height / 60),
              pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Container(
                  height: 200,
                  width: double.infinity,
                  child: pw.Image(
                    graphImage,
                  ),
                ),
              ),
              pw.SizedBox(height: size.height / 40),
              customString(fontSize: 15, text: "DISSEMINATION STATEMENT"),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                text:
                    "An important component to this program is that throughout its development and its planned implementation, there has been a focus on replicating the program and disseminating information about the program.  The program will merit becoming a model for others throughout the country.  As this is an ongoing program, a sufficient period of time will be undertaken to demonstrate statistically significant data illustrating the long-term effectiveness of this program.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              customString(
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15,
                  text:
                      "Further, this program will be shared within the $OState area."),
              customString(
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15,
                  text:
                      "$OName and its partners will be most pleased to make presentations on replicability and to assist in a wide dissemination of this program model.")
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(fontSize: 20, text: "SUSTAINABILITY STATEMENT"),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                  text:
                      "Sustainability has been considered in establishing the goals of the project including $GoalStatement. These goals are also priorities of the board of directors who are also developing additional funding alternatives.",
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                  text:
                      "With support from this grant, $OName. will be able to contract a fundraising consultant who will work with our board of directors to develop and implement a strategic fundraising plan that will incorporate an expanded annual giving program. Building a larger individual donor base will complement our grant seeking program and help ensure our financial future. It is also planned that other funding alternatives will continually be examined by our board of directors to ensure the sustainability and financial health of the organization. ",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text: "DIVERSITY, EQUITY, & INCLUSION STATEMENT",
                  fontSize: 20),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "The board of directors of $OName believe that a wide array of perspectives resulting from diversity and inclusion allows our organization to be more effective. We are committed to promoting diversity and inclusion in all our non-profit practices. We are also dedicated to greater diversity and inclusion within our own organization and provide equal opportunity to people of all races, ethnicities, religions, genders, sexual orientations, gender identifications, abilities, incomes, marital statuses, ages,geographic locations, philosophies, and veteran statuses in all levels of staff and governance.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal)
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              customString(
                text: "$OName",
                fontSize: 20,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                text: "BUDGET",
                fontSize: 20,
              ),
              pw.SizedBox(height: size.height / 20),
              pw.Container(
                width: double.infinity,
                height: 400,
                child: pw.Image(
                  budgetGraph,
                  fit: pw.BoxFit.fill,
                ),
              ),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Text("Stop",
                  style: pw.TextStyle(
                    fontSize: 30,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.red,
                  )),
              pw.SizedBox(height: size.height / 20),
              customString(
                  text:
                      "THE FOLLOWING BONUS TEMPLATES ARE NOT TO BE SUBMITTED BECAUSE THEY ARE NOT A PART OF MOST GRANTS. USE THEM AS ONGOING FUND DEVELOPMENT TOOLS FOR CULTIVATING PARTNERS & APPLYING FOR GRANTS IN THE FUTURE. ")
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(
                height: size.height / 40,
              ),
              customString(text: "APPENDIX", fontSize: 20),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "Certificate of Incorporation and By-Laws",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "IRS 501(c)(3) determination letter",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "List of officers and Board of Directors",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "Recent grants received and applications pending",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "Staff Biographies and Key Staff Resumes",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "Organization Operating Budget",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text:
                    "20XX Audited Financial statement (fiscal year ending December 31, 20XX, prepared by ",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                text: "___________________ Accountant, CPA, Phone: ",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                text: "__________________________________)",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 30),
              customString(
                text:
                    "List of other current funding sources and uses (3 years)",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "20XX Annual Report",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "Support or collaborative letters",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "      Letters of Support or Commitment",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 80),
              customString(
                text: "      Memorandums of Understanding",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(text: "SAMPLE LETTER OF INQUIRY", fontSize: 20),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "ENTER LETTERHEAD WITH PHONE NUMBER & EMAIL",
                fontSize: 15,
              ),
              customString(
                text: "(CREATE ONE IF NOT AVAILABLE)",
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.height / 40,
              ),
              customString(
                text: "DATE",
                fontWeight: pw.FontWeight.normal,
                fontSize: 15,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "Name, Title (Grant maker Contact)",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Foundation, Bank, Corporation (Grant maker))",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Address City, State, Zip Code",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "RE: Name of Grant or Program Request",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text:
                      "$OName is pleased to submit this funding request for your consideration to partially fund our $ProgramStatement. The mission of $OName is to $MissionStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text:
                      "$ProgramStatus our program is critical to improving the lives of $ApplicableCategory experiencing $ProgramPeriorty. According to $StaticsStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The outcomes of the $ProgramStatement will result in $OutCome1, $OutCome2, and $OutCome3 in the $OState area.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text:
                      "To accomplish those goals and outcomes, we have established collaborative partnerships with community, local, and state organizations such as $Partner1 providing $Partner1Provide, $Partner2 providing $Partner2Provide, and $Partner3 providing $Partner3Provide.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text:
                      "We envision facilitating a successful program that aligns to your funding interest that will continue to be strengthened for years to come through our networking with our current and future collaborative partners and our ongoing sustainability development efforts. Therefore, we are requesting your assistance in funding our proposal in the amount of $AmountRequested to be allocated as outlined in the attached budget. The total budget for the $ProgramStatement is $ToalBudget.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(height: size.height / 40),
              customString(
                  text:
                      "Thank you again for your consideration and your time reviewing our $ProgramStatement, and if you require a full proposal or further information, please contact me at $GcNumber or $GcEmail. I look forward to your response.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.height / 20,
              ),
              customString(
                  text: "Sincerely,",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 20),
              pw.SizedBox(
                height: size.height / 40,
              ),
              customString(
                  text: "$EdFName $EdLName EXECUTIVE DIRECTOR",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // pw.SizedBox(height: size.height / 10),
              customString(text: "SAMPLE COVER LETTER", fontSize: 20),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "ENTER LETTERHEAD WITH PHONE NUMBER & EMAIL",
                  fontSize: 15),
              customString(text: "(CREATE ONE IF NOT AVAILABLE)", fontSize: 15),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "Date", fontSize: 20, fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "Name, Title (Grant maker Contact)",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Foundation, Bank, Corporation (Grant maker)",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Address City, State, Zip Code",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "RE: Name of Grant or Program Request",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text:
                      "$OName is pleased to submit the attached grant application for your consideration to partially fund our $ProgramStatement program. The mission of $OName is to $MissionStatement. ",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),

              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "$ProgramStatus our program is critical to improving the lives of $ApplicableCategory experiencing $ProgramPeriorty. $NPName reports that $NPQuote.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The outcomes of the $ProgramStatement program will result in $OutCome1, $OutCome2, and $OutCome3 in the $OState area.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "To accomplish our goals and outcomes, we have established collaborative partnerships with community, local, and state organizations such as $Partner1 providing $Partner1Provide, $Partner2 providing $Partner2Provide, and $Partner3 providing $Partner3Provide.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text:
                      "NUMBER or ENTER EMAIL ADDRESS. I look forward to your response.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text:
                      "We are excited about the prospect of partnering with you as we provide programs to improve the lives of those affected by $ProgramPeriorty. The total cost of implementation of our $ProgramStatement program is $ToalBudget. Of this amount, $AmountScrud has already been committed through a combination of our existing operating budget and individual, local, state, or federal grant funders.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(
                  text:
                      "Your grant of $AmountRequested will complete the funding we need to fully implement this program, and we are excited about the prospect of partnering with you. Thank you for your consideration of our request.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "Sincerely,",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 40),
              customString(
                text: "$EdFName $EdLName Executive Director,",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(text: "Memorandum of Understanding", fontSize: 20),
              pw.SizedBox(
                height: size.height / 40,
              ),
              customString(text: "Signatures", fontSize: 15),
              pw.SizedBox(
                height: size.height / 40,
              ),
              customString(
                  text:
                      "This Memorandum of Understanding is made by and between $OName and $PartnerShip.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.height / 40,
              ),
              customString(text: "Program Description", fontSize: 15),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                  text:
                      "$OName  is seeking public, private, and government funding to fulfill the mission, goals, and outcomes of the organization. The program will be implemented and staffed by $OName, MOU partners, and volunteers as needed.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The measures of the outputs include $Measure1, $Measure2, and $Measure3. The outcomes of the $ProgramStatement will result in $OutCome1, $OutCome2, and $OutCome3 in the $OState area. The resulting impact includes $ImpactStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                text:
                    "To accomplish their goals and outcomes, they have established partnerships with organizations like ours, and collaborative partnerships with community, local, and state organizations such as $Partner1, providing $Partner1Provide, $Partner2, providing $Partner2Provide, and $Partner3, providing $Partner3Provide.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "$OName is not intended to replace any role or responsibility of its partnering agencies, but rather to help build a better, more coordinated network of support options.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                text: "Goals of the partnership are expressed below:",
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                text: "$OName will COMPLETE THE SENTENCE.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.height / 60,
              ),
              customString(
                text:
                    "ENTER PARTNER ORGANIZATION NAME will COMPLETE THE SENTENCE",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                text: "Terms of the Memorandum",
                fontSize: 20,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "This Memorandum of Understanding is made by and between $OName and ENTER THE NAME OF THE POTENTIAL PARTNER ORGANIZATION. It shall remain in effect until terminated by either party with 30 days written notice.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                text: "$OName",
                fontSize: 15,
              ),
              pw.SizedBox(height: size.height / 60),
              pw.Divider(
                color: PdfColors.black,
              ),
              pw.Row(
                  // mainAxisAlignment: pw.MainAxisAlignment.,
                  children: [
                    customString(
                        text: "Executive Director",
                        fontSize: 15,
                        fontWeight: pw.FontWeight.normal),
                    pw.Spacer(),
                    customString(
                      text: "Date",
                      fontSize: 15,
                      fontWeight: pw.FontWeight.normal,
                    ),
                    pw.Spacer(),
                  ]),
              pw.SizedBox(height: size.height / 60),
              pw.Divider(
                color: PdfColors.black,
              ),
              pw.Row(
                  // mainAxisAlignment: pw.MainAxisAlignment.,
                  children: [
                    customString(
                        text: "Project Director, if required",
                        fontSize: 15,
                        fontWeight: pw.FontWeight.normal),
                    pw.Spacer(),
                    customString(
                      text: "Date",
                      fontSize: 15,
                      fontWeight: pw.FontWeight.normal,
                    ),
                    pw.Spacer(),
                  ]),
              pw.SizedBox(
                height: size.height / 40,
              ),
              customString(text: "$OName", fontSize: 15),
              pw.SizedBox(
                height: size.height / 60,
              ),
              pw.SizedBox(height: size.height / 60),
              pw.Divider(
                color: PdfColors.black,
              ),
              pw.Row(
                  // mainAxisAlignment: pw.MainAxisAlignment.,
                  children: [
                    customString(
                        text: "Partner Representative Signature",
                        fontSize: 15,
                        fontWeight: pw.FontWeight.normal),
                    pw.Spacer(),
                    customString(
                      text: "Date",
                      fontSize: 15,
                      fontWeight: pw.FontWeight.normal,
                    ),
                    pw.Spacer(),
                  ]),
              pw.SizedBox(height: size.height / 60),
              pw.SizedBox(
                width: size.width / 1.5,
                child: pw.Divider(
                  color: PdfColors.black,
                ),
              ),
              customString(
                text: "Title",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 60),
              pw.Divider(
                color: PdfColors.black,
              ),
              pw.Row(
                  // mainAxisAlignment: pw.MainAxisAlignment.,
                  children: [
                    customString(
                        text: "Partner Representative Signature, if required",
                        fontSize: 15,
                        fontWeight: pw.FontWeight.normal),
                    pw.Spacer(),
                    customString(
                      text: "Date",
                      fontSize: 15,
                      fontWeight: pw.FontWeight.normal,
                    ),
                    pw.Spacer(),
                  ]),
              pw.SizedBox(height: size.height / 60),
              pw.SizedBox(
                width: size.width / 1.5,
                child: pw.Divider(
                  color: PdfColors.black,
                ),
              ),
              customString(
                text: "Title",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(
                text: "Sample Letter of Support",
                fontSize: 20,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                text: "Date:",
                fontSize: 15,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text: "Name", fontSize: 20, fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Organization",
                  fontSize: 20,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Address Line one",
                  fontSize: 20,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Address Line two",
                  fontSize: 20,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text: "Dear____________________________",
                  fontSize: 20,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "I am writing this letter to support for $OName as they ENTER DEVELOP OR EXPAND their $ProgramStatement, which promotes $ProgramPeriorty for $ProgramCategory.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                text:
                    "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The measures of the outputs include $Measure1, $Measure2, and $Measure3. The outcomes of the $ProgramStatement will result in $OutCome1, $OutCome2, and $OutCome3 in the $OState area. The resulting impact includes $ImpactStatement.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "To accomplish their goals and outcomes, they have established partnerships with organizations like ours, and collaborative partnerships with community, local, and state organizations such as $Partner1, providing $Partner1Provide, $Partner2, providing $Partner2Provide, and $Partner3, providing $Partner3Provide.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 60),
              customString(
                  text:
                      "I offer my support to this program as a representative of $PartnerShip. Please call me at ENTER PARTNER ORGANIZATION PHONE NUMBER if you need my help for the program. ",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "Sincerely,",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 40),
              customString(
                  text: "Name,",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(height: size.height / 120),
              customString(
                  text: "Title,",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              headingtable(size: size, text: "LOGIC MODEL", fontSize: 15),
              pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Expanded(
                        child: paddedText(
                          text: "Goals",
                          fontSize: 12,
                          padd: 4,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Expanded(
                        child: paddedText(
                          text: "Inputs",
                          fontSize: 12,
                          padd: 4,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Expanded(
                        child: paddedText(
                          text: "Outputs/Activities",
                          fontSize: 12,
                          padd: 4,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Expanded(
                        child: paddedText(
                          text: "Evaluation/Measure",
                          fontSize: 12,
                          padd: 4,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Expanded(
                        child: paddedText(
                          text: "Outcomes & Impact",
                          fontSize: 12,
                          padd: 4,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Expanded(
                        child: paddedText(
                          text: "Timeline",
                          fontSize: 12,
                          padd: 4,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ]),
                  ]),
              pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Expanded(
                        child: pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 4),
                          child: pw.Text(
                              "$OName's will work with partners and stakeholders to assist those experiencing $ProgramPeriorty by providing $GoalStatement.The resulting in $OutComeStatement for $ApplicableCategory in the $OState area.",
                              style: pw.TextStyle(
                                fontSize: 8,
                              )),
                        ),
                        flex: 1,
                      ),
                      pw.Expanded(
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Padding(
                                padding: pw.EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                child: pw.Text(
                                  "1.0 ${Input1}",
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                              pw.Padding(
                                padding: pw.EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                child: pw.Text("2.0 ${Input2}",
                                    style: pw.TextStyle(
                                      fontSize: 8,
                                    )),
                              ),
                              pw.Padding(
                                padding: pw.EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                child: pw.Text(
                                  "3.0 ${Input3}",
                                  style: pw.TextStyle(fontSize: 8),
                                ),
                              ),
                              pw.SizedBox(height: size.height / 80),
                              pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4),
                                  child: pw.Text("Partners",
                                      style: pw.TextStyle(
                                          fontSize: 12,
                                          fontWeight: pw.FontWeight.bold))),
                              pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  child: pw.Text(
                                      "Program Partners & What they provide.",
                                      style: pw.TextStyle(
                                        fontSize: 8,
                                      ))),
                              pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  child: pw.Text(
                                      "1.0 $Partner1 providing $Partner1Provide",
                                      style: pw.TextStyle(fontSize: 8))),
                              pw.SizedBox(height: size.height / 120),
                              pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  child: pw.Text(
                                      "2.0 $Partner2 providing $Partner2Provide",
                                      style: pw.TextStyle(fontSize: 8))),
                              pw.SizedBox(height: size.height / 120),
                              pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  child: pw.Text(
                                      "3.0 $Partner3 providing $Partner3Provide",
                                      style: pw.TextStyle(fontSize: 8))),
                              pw.SizedBox(height: size.height / 120),
                            ]),
                        flex: 1,
                      ),
                      pw.Expanded(
                        child: pw.Column(
                          children: [
                            pw.Padding(
                                padding: pw.EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                child: pw.Text("1.0 $Output1",
                                    style: pw.TextStyle(fontSize: 8))),
                            pw.SizedBox(
                              height: size.height / 120,
                            ),
                            pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text(
                                "2.0 $Output2",
                                style: pw.TextStyle(fontSize: 8),
                              ),
                            ),
                            pw.SizedBox(
                              height: size.height / 120,
                            ),
                            pw.Padding(
                                padding: pw.EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                child: pw.Text("3.0 $Output3",
                                    style: pw.TextStyle(fontSize: 8))),
                            pw.SizedBox(
                              height: size.height / 80,
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                      pw.Expanded(
                          flex: 1,
                          child: pw.Column(children: [
                            pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 3),
                              child: pw.Text(
                                  "The evaluation will be measured using the following instruments:",
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                  )),
                            ),
                            pw.SizedBox(height: size.height / 60),
                            pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text("1.0 $Measure1",
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                  )),
                            ),
                            pw.SizedBox(
                              height: size.height / 120,
                            ),
                            pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text("2.0 $Measure2",
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                  )),
                            ),
                            pw.SizedBox(
                              height: size.height / 120,
                            ),
                            pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text(
                                "3.0 $Measure3",
                                style: pw.TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                            ),
                            pw.SizedBox(
                              height: size.height / 80,
                            )
                          ])),
                      pw.Expanded(
                        child: pw.Container(
                          margin: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 4),
                          child: pw.Column(children: [
                            pw.Text(
                                "The $ProgramStatement is expected toprovide the following outcomes: ",
                                style: pw.TextStyle(
                                  fontSize: 8,
                                )),
                            pw.SizedBox(
                              height: size.height / 60,
                            ),
                            customString(
                                text: "PROGRAM OUTCOME",
                                fontSize: 8,
                                fontWeight: pw.FontWeight.bold),
                            pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text("1.0 $OutCome1 ",
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                  )),
                            ),
                            pw.SizedBox(
                              height: size.height / 120,
                            ),
                            pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text("2.0 $OutCome2 ",
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                  )),
                            ),
                            pw.SizedBox(
                              height: size.height / 120,
                            ),
                            pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: pw.Text("3.0 $OutCome3 ",
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                  )),
                            ),
                            pw.SizedBox(height: size.height / 60),
                            customString(
                                text: "PROGRAM IMPACT",
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 8),
                            customString(
                                text:
                                    "The resulting impact includes $ImpactStatement.",
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 8),
                          ]),
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          margin: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 4),
                          child: pw.Column(children: [
                            customString(
                                text: "Quarter 1-4",
                                fontSize: 8,
                                fontWeight: pw.FontWeight.normal),
                            pw.SizedBox(height: size.height / 120),
                            pw.Column(
                                children: [
                              "Developing and Expanding Partners",
                              "Developing and Expanding Advisory Board",
                              "Developing and Expanding Volunteers",
                              "Program Implementation & Training",
                              "Monthly,Quarter, MidTerm, or Annual Reports"
                            ]
                                    .map((text) => customString(
                                          text: text,
                                          fontSize: 8,
                                          fontWeight: pw.FontWeight.normal,
                                        ))
                                    .toList())
                          ]),
                        ),
                      ),
                    ]),
                  ])
            ]);
      },
    ));
    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Pdf View"),
        backgroundColor: listtilecolor,
      ),
      body: PdfPreview(
        build: (context) => makePdf(size),
        padding: EdgeInsets.all(2),
        maxPageWidth: double.infinity,
        onPrinted: _showPrintedToast,
        onShared: _showSharedToast,
      ),
    );
  }
}
