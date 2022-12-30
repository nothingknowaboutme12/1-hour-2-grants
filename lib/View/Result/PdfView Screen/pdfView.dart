import 'dart:io';
import 'dart:typed_data';

import 'package:cdb/Utiles/Table/tables.dart';
import 'package:cdb/Utiles/utilies.dart';
import 'package:cdb/View/Splash%20Screen/splash_screen.dart';
import 'package:flutter/foundation.dart';
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
    // required this.StaticsStatement,
    required this.ProgramStatus,
    required this.ToalBudget,
    required this.AmountScrud,
    required this.AmountRequested,
    required this.ApplicableCategory,
    required this.ProgramCategory,
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
    required this.imagepath,
    required this.ProgramPeriorty,
    required this.NPName,
    required this.NPQuote,
    required this.LPName,
    required this.LPQuote,
    required this.StateRegion,
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
  String ProgramStatus;
  String ToalBudget;
  String AmountRequested;
  String AmountScrud;
  String ApplicableCategory;
  String ProgramCategory;

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
  String imagepath; //
  String ProgramPeriorty;
  String NPName;
  String NPQuote;
  String LPName;
  String LPQuote;
  String StateRegion;
  // PdfView({
  //   required this.imagepath,
  // });
  // // XFile? file;
  // String imagepath;
  //
  // String OName = "Organization Name1";
  // String EdFName = "Ed first name1";
  // String EdLName = "Ed last name1";
  // String EdBio = "Ed Bio1";
  // String EdNumber = "Ed number1";
  // String EdEmail = "Ed email1";
  // String GcNumber = " =Gc number1";
  // String GcEmail = "Gc email1";
  // String PdFName = "Pd fist name1";
  // String PdLName = "Pd last name1";
  // String PdBio = "Pd bio1";
  // String PcFName = "pc first name1";
  // String PcLName = "pc last name1";
  // String PcBio = "Pc bio1";
  // String OState = "Organization name1";
  // String yearEsatablished = "year established1";
  // String OActiveyear = "Active year1";
  //
  // String CLGIStatement = "CLGIStatement1";
  //
  // String GGFunder = "GGFUnder1";
  // String ProgramStatement = "Program statement1";
  // String MissionStatement = "Mission statement1";
  // String GoalStatement = "Goal statement1";
  // String OutComeStatement = "Outcome statement1";
  // String ImpactStatement = "Impact statement1";
  // String StaticsStatement = "Missio statement1";
  // String ProgramStatus = "ProgramStatus statement1";
  // String ToalBudget = "Total budget1";
  // String AmountRequested = "Amount requested1";
  // String AmountScrud = "Amount scrud1";
  // String ApplicableCategory = "applicable category1";
  // String ProgramCategory = "Program category1";
  // String StateRegion = "State region1";
  // String Input1 = "Input11";
  // String Input2 = "Input22";
  // String Input3 = "Input33";
  // String Output1 = "Output11";
  // String Output2 = "Output22";
  // String Output3 = "Output33";
  // String OutCome1 = "Outcome11";
  // String OutCome2 = "Outcome22";
  // String OutCome3 = "Outcome33";
  // String Measure1 = "Measure11";
  // String Measure2 = "Measure22";
  // String Measure3 = "Measure33";
  // String Verification1 = "Verification11";
  // String Verification2 = "Verification22";
  // String Verification3 = "Verification33";
  // String Partner1 = "Partner11";
  // String Partner2 = "Partner22";
  // String Partner3 = "Partner33";
  // String Partner1Provide = "Partner11provides";
  // String Partner2Provide = "Partner22provides";
  // String Partner3Provide = "Partner33provides";
  // // String image; //
  // String ProgramPeriorty = "Program periorty1";
  // String NPName = "National prublicaiton name";
  // String NPQuote = "National prublicaiton quote";
  // String PartnerShip = "Partnership";
  // String LPName = "Local Publician name";
  // String LPQuote = "Local Publician Quote";

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

    final selctdimageLogo = pw.MemoryImage(
      File(imagepath).readAsBytesSync(),
    );
    // rootBundle.load(selctdimageLogo.bytes.buffer.asUint8List()).then((value) =>this.imageData=value,   );
    // final webImage = await networkImage(imagepath);
    final graphImage = pw.MemoryImage(
        (await rootBundle.load('assets/graph.png')).buffer.asUint8List());
    final budgetGraph = pw.MemoryImage(
        (await rootBundle.load('assets/budgetGraph.png')).buffer.asUint8List());
    // final netImage = Image.memory(image);
    final pdf = pw.Document();
    pdf.addPage(pw.Page(build: (context) {
      return pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        children: [
          pw.Container(
            width: size.width > 600 ? 1000 : 900,
            height: 150,
            child: pw.Image(
              imageLogo,
              fit: pw.BoxFit.cover,
            ),
          ),
          pw.Text("CDB GRANT TEMPLATE",
              style: pw.TextStyle(
                fontSize: 25,
                fontWeight: pw.FontWeight.normal,
                // fontWeight: pw.FontWeight.bold,
              )),
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
            decoration: pw.BoxDecoration(
              borderRadius: pw.BorderRadius.circular(2),
            ),
            child: pw.Image(
              selctdimageLogo,
              fit: pw.BoxFit.fill,
            ),
          ),
          pw.Container(
            margin: pw.EdgeInsets.symmetric(horizontal: 20),
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.SizedBox(
                    height:
                        size.width > 600 ? size.height / 30 : size.height / 20,
                  ),
                  pw.Text("$EdFName $EdLName,Executive Director",
                      style: pw.TextStyle(
                        fontSize: 20,
                      )),
                  pw.SizedBox(
                    height:
                        size.width > 600 ? size.height / 80 : size.height / 60,
                  ),
                  pw.Text(
                    "Phone: $GcNumber",
                    style: pw.TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  pw.SizedBox(
                    height:
                        size.width > 600 ? size.height / 80 : size.height / 60,
                  ),
                  pw.Text("Email:$GcEmail",
                      style: pw.TextStyle(
                        fontSize: 20,

                        // fontWeight: pw.FontWeight,
                      )),
                  pw.SizedBox(
                    height:
                        size.width > 600 ? size.height / 60 : size.height / 40,
                  ),
                ]),
          ),
          pw.Spacer(),
          endLine(1),
        ],
      );
    }));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Container(
          margin: pw.EdgeInsets.symmetric(horizontal: 20),
          child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.SizedBox(
                    height:
                        size.width > 600 ? size.height / 80 : size.height / 60),
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
                      size.width > 600 ? size.height / 60 : size.height / 40,
                ),
                pw.Align(
                  alignment: pw.Alignment.center,

                  child: customString(
                    text: "Table of contents",
                    // fontWeight: pw.FontWeight.bold,
                    fontSize: 20,
                  ), //
                ), //
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 30 : size.height / 20,
                ),
                customString(text: "EXECUTIVE SUMMARY", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 80 : size.height / 60,
                ),
                customString(text: "NARRATIVE", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 40,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.symmetric(horizontal: 30),
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        customString(
                          text: "Need or Problem Statement",
                          fontSize: 15,
                          // fontWeight: pw.FontWeight.normal,
                        ),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        customString(text: "Program Goals", fontSize: 15),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        customString(
                            text: "Program Implementation Plan", fontSize: 15),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        customString(text: "Program Timeline ", fontSize: 15),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 30
                              : size.height / 20,
                        ),
                        customString(
                            text: "Program Implementation", fontSize: 15),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        customString(
                            text: "Organizational Management", fontSize: 15),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        customString(
                            text: "Dissemination Statement", fontSize: 15),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        customString(
                            text: "Sustainability Statement", fontSize: 15),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        customString(
                            text: "Diversity, Equity, & Inclusion Statement",
                            fontSize: 15),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 80
                              : size.height / 60,
                        ),
                        pw.SizedBox(
                          height: size.width > 600
                              ? size.height / 60
                              : size.height / 40,
                        ),
                      ]),
                ),

                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 40,
                ),
                customString(text: "BUDGET", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 40,
                ),
                customString(text: "APPENDIX", fontSize: 20),
                pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 60 : size.height / 40,
                ),

                pw.Spacer(),
                endLine(2),
              ]),
        );
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(text: "EXECUTIVE SUMMARY", fontSize: 20),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 60 : size.height / 40,
              ),
              customString(
                text:
                    " $OName is $OState nonprofit and 501c3 established in $yearEsatablished. The mission of $OName is to $MissionStatement.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text:
                    " $ProgramStatus our program is critical for improving the lives of $ApplicableCategory experiencing $ProgramPeriorty. According to $NPName, $NPQuote.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The outcomes of the $ProgramStatement program will result in $OutCome1, $OutCome2, and $OutCome3 in the $StateRegion area.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "To accomplish those goals and outcomes, we have established collaborative partnerships with community, local, and state organizations such as $Partner1 providing $Partner1Provide, $Partner2 providing $Partner2Provide, and $Partner3 providing $Partner3Provide.",
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "We are excited about the prospect of partnering with you as we provide programs to improve the lives of those affected by $ProgramPeriorty and improve the community for all.",
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "The total cost of implementation of our $ProgramStatement is $ToalBudget. Of this amount, $AmountScrud has already been committed through a combination of our existing operating budget and individual, local, state, or federal grant funders.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text:
                    "Your grant of $AmountRequested will complete the funding we need to fully implement this program, and we are excited about the prospect of partnering with you. Thank you for your consideration of our request.",
                fontWeight: pw.FontWeight.normal,
                fontSize: 15,
              ),
              pw.Spacer(),
              endLine(3),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text: "NARRATIVE",
                fontSize: 20,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text: "NEED OR PROBLEM STATEMENT",
                fontWeight: pw.FontWeight.bold,
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "According to $NPName, $NPQuote. In the $StateRegion area, $LPName reports that $LPQuote. Current initiatives in the $StateRegion area include $CLGIStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The outcomes of the $ProgramStatement will result in $OutCome1, $OutCome2, and $OutCome3 in the $StateRegion area.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text: "PROGRAM GOALS",
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text:
                    "The purpose and goals of $OName are aligned with goals of the grant which are to $GGFunder, for participants in the program which promotes $ProgramPeriorty for $ApplicableCategory including $GoalStatement.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(height: size.height / 80),
              customString(
                text:
                    "To accomplish those goals and outcomes, we have established collaborative partnerships with community, local, and state organizations such as $Partner1 providing $Partner1Provide, $Partner2 providing $Partner2Provide, and $Partner3 providing $Partner3Provide. ",
                fontWeight: pw.FontWeight.normal,
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(text: "Program Implementation", fontSize: 15),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The measures of the outputs include $Measure1, $Measure2, and $Measure3. The outcomes of the $ProgramStatement will result in $OutCome1, $OutCome2, and $OutCome3 in the $StateRegion area. The resulting impact includes $ImpactStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.Spacer(),
              endLine(4),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text: "Program Timeline",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.bold),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "$OName will follow the timeline below to accomplish the goals of grant.The key staff are the executive director and the program director. The program coordinator is listed because they will be responsible for the data entry for reporting. However but are not be a part ofthe administrative team",
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 15),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
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
                          padd: 4,
                          fontWeight: pw.FontWeight.bold),
                      paddedText(
                          text: "Program Year 1",
                          fontSize: 15,
                          padd: 4,
                          fontWeight: pw.FontWeight.bold),
                      paddedText(
                          text: "Person Responsible",
                          fontSize: 15,
                          padd: 4,
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
              pw.Spacer(),
              endLine(5),
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
                        padding:
                            pw.EdgeInsets.symmetric(horizontal: 7, vertical: 6),
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
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
                              pw.SizedBox(height: size.height / 120),
                            ]),
                      ),
                      pw.Container(
                        padding:
                            pw.EdgeInsets.symmetric(horizontal: 7, vertical: 6),
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
                    pw.TableRow(children: [
                      pw.Container(
                        padding:
                            pw.EdgeInsets.symmetric(horizontal: 7, vertical: 6),
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
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
                            "Volunteers Recruitment & Training Program",
                            "Implementation(Recruitment, Intake,& referrals as needed)Monthly or Quarterly",
                            "Evaluations & Quarterly Reports",
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
                    pw.TableRow(children: [
                      pw.Container(
                        padding:
                            pw.EdgeInsets.symmetric(horizontal: 7, vertical: 6),
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
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
                            "Volunteers Recruitment & Training Program",
                            "Implementation(Recruitment, Intake,& referrals as needed)Monthly or Quarterly ",
                            "Evaluations & Quarterly Reports",
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
              endLine(6),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(
                  text: "Program Evaluation",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.bold),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text:
                    "$OName’s executive director, $EdFName $EdLName, oversees the collection and reporting of data required for each performance measure.$EdFName $EdLName will collect and report on the performance measures indicated. The measures used to collect the data include $Measure1, $Measure2, and $Measure3 by all participating agencies. All measures are verified individually or collectively by attendance records, pre & post surveys, or partner records. The data will be tracked and accessed by local staff using pre & post surveys, sign-in sheets, observation, and confirmed by an outside contract evaluator to ensure that goals are met, and disparities are reduced. All quarterly evaluation duties will be supervised by the Executive Director, the project director, or the project coordinator. The plan for collection, management,analysis, and reporting has been outlined below:",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(text: "Goals", fontSize: 15),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "$OName's will collaborate with partners and stakeholders to assist those experiencing $ProgramPeriorty by providing $GoalStatement.The resulting outcome will result in $OutComeStatement for $ApplicableCategory in the $StateRegion area. The resulting impact includes $ImpactStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(text: "Inputs", fontSize: 15),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "Our inputs detail the amount of time, energy and staff devoted to each program to ensure for all stakeholders.The inputs are:",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text: "1.0 $Input1",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "2.0 $Input2",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "3.0 $Input3",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              pw.Spacer(),
              endLine(7),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          customString(
            text: "Partners",
            fontSize: 15,
          ),
          pw.SizedBox(
            height: size.width > 600 ? size.height / 80 : size.height / 60,
          ),
          customString(
            text:
                "Our partners include $Partner1, $Partner2, AND $Partner3, and will assist us indelivering the program to our stakeholders as described below:",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.SizedBox(
            height: size.width > 600 ? size.height / 80 : size.height / 60,
          ),
          customString(
            text: "1.0 $Partner1 providing $Partner1Provide",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          customString(
            text: "2.0 $Partner2 providing $Partner2Provide",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          customString(
            text: "3.0 $Partner3 providing $Partner3Provide",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.SizedBox(
            height: size.width > 600 ? size.height / 80 : size.height / 60,
          ),
          customString(
            text: "Outputs & Activities",
            fontSize: 15,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
            text:
                "Our outputs detail the results of the activities that we will accomplish during the program as indicated below:",
            fontSize: 15,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text: "$Output1", fontSize: 15, fontWeight: pw.FontWeight.normal),
          customString(
              text: "$Output2", fontSize: 15, fontWeight: pw.FontWeight.normal),
          customString(
              text: "$Output3", fontSize: 15, fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
            text: "Outcomes, Measures, & Verifications",
            fontSize: 15,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "The $ProgramStatement is expected to provide the following outcomes:",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "1.0 $OutCome1 as measured by $Measure1 and verified by $Verification1 by the end of the grant period.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "2.0 $OutCome2 as measured by $Measure2 and verified by $Verification2 by the end of the grant period.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "3.0 $OutCome3 as measured by $Measure3 and verified by $Verification3 by the end of the grant period.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
            text: "Program Impact",
            fontSize: 15,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "As a result of the successful delivery of our $ProgramStatement, The resulting impact is expected to include $ImpactStatement. ",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          pw.Spacer(),
          endLine(8),
        ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          customString(
            text: "Organization Management",
            fontSize: 15,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "$OName has been in the community more than $OActiveyear years and have established linkages to the community including $Partner1, $Partner2, and $Partner3  with future collaborative including social and government service agencies as the need arise.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
            text: "Key staff include $EdFName $EdLName and $EdBio",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 120 : size.height / 100),
          customString(
            text: "$PdBio",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 120 : size.height / 100),
          customString(
            text: "$PcBio",
            fontWeight: pw.FontWeight.normal,
            fontSize: 15,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
            text:
                "All additional positions will be outsourced excluding the infrastructure positions. The outsourced positions include HR, Budget, Finance, Payroll, training, and support. All volunteers will be supervised by the project director",
            fontWeight: pw.FontWeight.normal,
            fontSize: 15,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
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
          customString(fontSize: 15, text: "Dissemination Statement"),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
            text:
                "A vital component to this program is that throughout its development and its planned implementation, there has been a focus on replicating the program and disseminating information about the program.  The program will merit becoming a model for others throughout the country.  As this is an ongoing program, a sufficient period of time will be undertaken to demonstrate statistically significant data illustrating the long-term effectiveness of this program.",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.Spacer(),
          endLine(9),
        ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          customString(
              fontWeight: pw.FontWeight.normal,
              fontSize: 15,
              text:
                  "Further, this program will be shared within the $StateRegion area."),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              fontWeight: pw.FontWeight.normal,
              fontSize: 15,
              text:
                  "$OName and its partners will be most pleased to make presentations on replicability and to assist in a wide dissemination of this program model."),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(fontSize: 15, text: "Sustainability Statement "),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "Sustainability has been considered in establishing the goals of the project including $GoalStatement. These goals are also priorities of the board of directors who are also developing additional funding alternatives.",
              fontWeight: pw.FontWeight.normal,
              fontSize: 15),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "With support from this grant, $OName. will be able to contract a fundraising consultant who will work with our board of directors to develop and implement a strategic fundraising plan that will incorporate an expanded annual giving program. Building a larger individual donor base will complement our grant seeking program and help ensure our financial future. It is also planned that other funding alternatives will continually be examined by our board of directors to ensure the sustainability and financial health of the organization. ",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text: "DIVERSITY, EQUITY, & INCLUSION STATEMENT", fontSize: 15),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "The board of directors of $OName believe that a wide array of perspectives resulting from diversity and inclusion allows our organization to be more effective. We are committed to promoting diversity and inclusion in all our non-profit practices. We are also dedicated to greater diversity and inclusion within our own organization and provide equal opportunity to people of all races, ethnicities, religions, genders, sexual orientations, gender identifications, abilities, incomes, marital statuses, ages,geographic locations, philosophies, and veteran statuses in all levels of staff and governance.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.Spacer(),
          endLine(10),
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
              pw.Spacer(),
              endLine(11),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Container(
          margin: pw.EdgeInsets.symmetric(horizontal: 30),
          child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                pw.Spacer(),
                pw.Text("STOP",
                    style: pw.TextStyle(
                      fontSize: 35,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.red,
                    )),
                pw.SizedBox(height: size.height / 60),
                customString(
                  text:
                      "THE FOLLOWING BONUS APPENDIX TEMPLATES ARE NOT TO BE SUBMITTED BECAUSE THEY ARE NOT A PART OF MOST GRANTS. USE THEM AS ONGOING FUND DEVELOPMENT TOOLS FOR CULTIVATING PARTNERS & APPLYING FOR GRANTS IN THE FUTURE. ",
                ),
                pw.Spacer(),
                endLine(12),
              ]),
        );
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
              customString(text: "APPENDIX", fontSize: 15),
              pw.SizedBox(
                  height:
                      size.width > 600 ? size.width / 60 : size.height / 40),
              customString(
                text: "Certificate of Incorporation and By-Laws",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                  height:
                      size.width > 600 ? size.width / 60 : size.height / 40),
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
              pw.Spacer(),
              endLine(13),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
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
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "$OName is pleased to submit this funding request for your consideration to partially fund our $ProgramStatement. The mission of $OName is to $MissionStatement.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "$ProgramStatus our program is critical to improving the lives of $ApplicableCategory experiencing $ProgramPeriorty. According to $NPName, $NPQuote.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
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
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          pw.Spacer(),
          endLine(14),
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
                      "We envision facilitating a successful program that aligns to your funding interest that will continue to be strengthened for years to come through our networking with our current and future collaborative partners and our ongoing sustainability development efforts. Therefore, we are requesting your assistance in funding our proposal in the amount of $AmountRequested to be allocated as outlined in the attached budget. The total budget for the $ProgramStatement is $ToalBudget.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                  height:
                      size.width > 600 ? size.height / 80 : size.height / 60),
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
                height: size.height / 20,
              ),
              customString(
                  text: "$EdFName $EdLName EXECUTIVE DIRECTOR",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.Spacer(),
              endLine(15),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          // pw.SizedBox(height: size.height / 10),
          customString(text: "SAMPLE COVER LETTER", fontSize: 20),
          pw.SizedBox(height: size.height / 40),
          customString(
              text: "ENTER LETTERHEAD WITH PHONE NUMBER & EMAIL", fontSize: 15),
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

          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "$ProgramStatus our program is critical to improving the lives of $ApplicableCategory experiencing $ProgramPeriorty. $NPName reports that $NPQuote.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(height: size.height / 60),
          customString(
              text:
                  "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The outcomes of the $ProgramStatement program will result in $OutCome1, $OutCome2, and $OutCome3 in the $StateRegion area.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          customString(
              text:
                  "To accomplish our goals and outcomes, we have established collaborative partnerships with community, local, and state organizations such as $Partner1 providing $Partner1Provide, $Partner2 providing $Partner2Provide, and $Partner3 providing $Partner3Provide.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),

          pw.Spacer(),
          endLine(16),
        ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          customString(
              text:
                  "We are excited about the prospect of partnering with you as we provide programs to improve the lives of those affected by $ProgramPeriorty. The total cost of implementation of our $ProgramStatement program is $ToalBudget. Of this amount, $AmountScrud has already been committed through a combination of our existing operating budget and individual, local, state, or federal grant funders.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 60 : size.height / 40),
          customString(
              text:
                  "Your grant of $AmountRequested will complete the funding we need to fully implement this program, and we are excited about the prospect of partnering with you. Thank you for your consideration of our request.",
              fontSize: 15,
              fontWeight: pw.FontWeight.normal),
          pw.SizedBox(height: size.height / 20),
          customString(
            text: "Sincerely,",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.SizedBox(height: size.height / 20),
          customString(
            text: "$EdFName $EdLName Executive Director,",
            fontSize: 15,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.SizedBox(
              height: size.width > 600 ? size.height / 80 : size.height / 60),
          pw.Spacer(),
          endLine(17),
        ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              customString(text: "Memorandum of Understanding", fontSize: 20),
              pw.SizedBox(
                height: size.height / 40,
              ),
              customString(text: "Signatures", fontSize: 15),
              pw.SizedBox(
                height: size.height / 40,
              ),
              pw.RichText(
                  text: pw.TextSpan(
                      text:
                          "This Memorandum of Understanding is made by and between $OName and ",
                      style: pw.TextStyle(
                        fontSize: 15,
                      ),
                      children: [
                    pw.TextSpan(
                      text: "ENTER PARTNER ORGANIZATION NAME.",
                      style: pw.TextStyle(
                        fontStyle: pw.FontStyle.italic,
                        fontSize: 15,
                      ),
                    )
                  ])),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(text: "Program Description", fontSize: 15),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "$OName  is seeking public, private, and government funding to fulfill the mission, goals, and outcomes of the organization. The program will be implemented and staffed by $OName, MOU partners, and volunteers as needed.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The measures of the outputs include $Measure1, $Measure2, and $Measure3. The outcomes of the $ProgramStatement will result in $OutCome1, $OutCome2, and $OutCome3 in the $StateRegion area. The resulting impact includes $ImpactStatement.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text:
                    "To accomplish their goals and outcomes, they have established partnerships with organizations like ours, and collaborative partnerships with community, local, and state organizations such as $Partner1, providing $Partner1Provide, $Partner2, providing $Partner2Provide, and $Partner3, providing $Partner3Provide.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "$OName is not intended to replace any role or responsibility of its partnering agencies, but rather to help build a better, more coordinated network of support options.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.Spacer(),
              endLine(18),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text: "Goals of the partnership are expressed below:",
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text: "$OName will COMPLETE THE SENTENCE.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              pw.RichText(
                text: pw.TextSpan(
                    text: "ENTER PARTNER ORGANIZATION NAME",
                    style: pw.TextStyle(
                      fontStyle: pw.FontStyle.italic,
                      fontSize: 15,
                    ),
                    children: [
                      pw.TextSpan(
                          text: " will ", style: pw.TextStyle(fontSize: 15)),
                      pw.TextSpan(
                          text: "COMPLETE THE SENTENCE.",
                          style: pw.TextStyle(
                              fontSize: 15, fontStyle: pw.FontStyle.italic))
                    ]),
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text: "Terms of the Memorandum",
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "This Memorandum of Understanding is made by and between $OName and ENTER THE NAME OF THE POTENTIAL PARTNER ORGANIZATION. It shall remain in effect until terminated by either party with 30 days written notice.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text: "$OName",
                fontSize: 15,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              pw.Divider(
                color: PdfColors.black,
              ),
              pw.Row(children: [
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
              pw.Spacer(),
              endLine(19),
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
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text: "Date:",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text: "Name", fontSize: 15, fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Organization",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Address Line one",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              customString(
                  text: "Address Line two",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text: "Dear____________________________",
                  fontSize: 20,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "I am writing this letter to support for $OName as they $ProgramStatus their $ProgramStatement, which promotes $ProgramPeriorty for $ProgramCategory.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                text:
                    "$OName’s goals are $GoalStatement. The $ProgramStatement will provide $Output1, $Output2, and $Output3. The measures of the outputs include $Measure1, $Measure2, and $Measure3. The outcomes of the $ProgramStatement will result in $OutCome1, $OutCome2, and $OutCome3 in the $OState area. The resulting impact includes $ImpactStatement.",
                fontSize: 15,
                fontWeight: pw.FontWeight.normal,
              ),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              customString(
                  text:
                      "To accomplish their goals and outcomes, they have established partnerships with organizations like ours, and collaborative partnerships with community, local, and state organizations such as $Partner1, providing $Partner1Provide, $Partner2, providing $Partner2Provide, and $Partner3, providing $Partner3Provide.",
                  fontSize: 15,
                  fontWeight: pw.FontWeight.normal),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
              pw.RichText(
                  text: pw.TextSpan(
                      text:
                          "I offer my support to this program as a representative of ",
                      style: pw.TextStyle(
                        fontSize: 15,
                      ),
                      children: [
                    pw.TextSpan(
                      text: "ENTER PARTNER ORGANIZATION NAME.",
                      style: pw.TextStyle(
                          fontSize: 15, fontStyle: pw.FontStyle.italic),
                    ),
                    pw.TextSpan(
                      text: "Please call me at ",
                      style: pw.TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    pw.TextSpan(
                      text: "ENTER PARTNER ORGANIZATION PHONE NUMBER ",
                      style: pw.TextStyle(
                          fontSize: 15, fontStyle: pw.FontStyle.italic),
                    ),
                    pw.TextSpan(
                      text: "if you need my help for the program.",
                      style: pw.TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ])),
              pw.SizedBox(
                height: size.width > 600 ? size.height / 80 : size.height / 60,
              ),
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
              pw.Spacer(),
              endLine(20),
            ]);
      },
    ));
    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Table(
                border: pw.TableBorder.all(color: PdfColors.black),
                children: [
                  pw.TableRow(children: [
                    pw.Column(children: [
                      customString(
                        text: "$OName",
                        fontSize: 15,
                      ),
                      customString(
                        text: "LOGIC MODEL",
                        fontSize: 15,
                      ),
                    ])
                  ]),
                ],
              ),
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
                          text: "Impact",
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
                              "$OName's will work with partners and stakeholders to assist those experiencing $ProgramPeriorty by providing $GoalStatement.The resulting in $OutComeStatement for $ApplicableCategory in the $StateRegion area.",
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
                                    horizontal: 4, vertical: 4),
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
                        child: pw.Container(
                          margin: pw.EdgeInsets.symmetric(
                              horizontal: 4, vertical: 4),
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                    "The $ProgramStatement is expected to provide the following outcomes: ",
                                    style: pw.TextStyle(
                                      fontSize: 8,
                                    )),
                                pw.SizedBox(
                                  height: size.width > 600
                                      ? size.height / 80
                                      : size.height / 60,
                                ),
                                customString(
                                    text: "PROGRAM OUTCOME",
                                    fontSize: 8,
                                    fontWeight: pw.FontWeight.bold),
                                customString(
                                    text:
                                        "1.0 $OutCome1 as measured by $Measure1 and verified by $Verification1 by the end of the grant period. ",
                                    fontSize: 8,
                                    fontWeight: pw.FontWeight.normal),
                                pw.SizedBox(
                                  height: size.width > 600
                                      ? size.height / 80
                                      : size.height / 60,
                                ),
                                customString(
                                    text:
                                        "2.0 $OutCome2 as measured by $Measure2 and verified by $Verification2 by the end of the grant period. ",
                                    fontSize: 8,
                                    fontWeight: pw.FontWeight.normal),
                                pw.SizedBox(
                                  height: size.width > 600
                                      ? size.height / 80
                                      : size.height / 60,
                                ),
                                customString(
                                    text:
                                        "3.0 $OutCome3 as measured by $Measure3 and verified by $Verification3 by the end of the grant period. ",
                                    fontSize: 8,
                                    fontWeight: pw.FontWeight.normal),
                                pw.SizedBox(
                                  height: size.width > 600
                                      ? size.height / 80
                                      : size.height / 60,
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
                              ]),
                        ),
                      ),
                      pw.Expanded(
                          child: pw.Container(
                        margin: pw.EdgeInsets.all(4),
                        child: pw.Column(children: [
                          customString(
                              text: "PROGRAM IMPACT",
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 8),
                          pw.SizedBox(height: size.height / 120),
                          customString(
                              text:
                                  "The resulting impact includes $ImpactStatement.",
                              fontWeight: pw.FontWeight.normal,
                              fontSize: 8),
                        ]),
                      )),
                    ]),
                  ]),
              pw.Spacer(),
              endLine(21),
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
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SplashScreen(),
            ));
          },
        ),
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

pw.Widget endLine(int pageNumber) {
  return pw.Column(
    children: [
      pw.Divider(
        color: PdfColors.black,
      ),
      pw.Align(
          alignment: pw.Alignment.bottomRight,
          child: pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
            pw.Text("$pageNumber | ",
                style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
            pw.Text(
              "page",
              style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold, color: PdfColors.grey),
            ),
          ]))
    ],
  );
}
