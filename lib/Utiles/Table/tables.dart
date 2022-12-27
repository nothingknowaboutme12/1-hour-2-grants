import 'dart:ui';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Padding paddedText(
    {required String text,
    double padd = 20,
    pw.FontWeight fontWeight = pw.FontWeight.normal,
    double fontSize = 20}) {
  return pw.Padding(
    child: pw.Text(text,
        style: pw.TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
        )),
    padding: pw.EdgeInsets.all(padd),
  );
}

pw.Table tableoption1(
    {required List<String> list1,
    required List<String> list2,
    required String firstrowtext,
    required String text,
    required String text2,
    double padd = 20,
    pw.FontWeight fontWeight = pw.FontWeight.normal,
    double fontsize: 20,
    required Size size}) {
  return pw.Table(
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
                text: firstrowtext,
                padd: padd,
                fontWeight: fontWeight,
                fontSize: fontsize),
            pw.Column(mainAxisAlignment: pw.MainAxisAlignment.start, children: [
              paddedText(
                  text: text,
                  fontSize: fontsize,
                  padd: padd,
                  fontWeight: fontWeight),
              pw.SizedBox(height: size.height / 60),
              pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: list1
                      .map((txt) => paddedText(
                          text: txt,
                          fontSize: fontsize,
                          padd: padd,
                          fontWeight: pw.FontWeight.normal))
                      .toList()),
              pw.SizedBox(height: size.height / 60),
              paddedText(
                  text: text2,
                  fontSize: fontsize,
                  padd: padd,
                  fontWeight: pw.FontWeight.normal),
              pw.Column(
                  children: list2
                      .map((txt) => paddedText(
                          text: txt,
                          fontSize: fontsize,
                          padd: padd,
                          fontWeight: pw.FontWeight.normal))
                      .toList()),
              // )
            ]),
          ],
        )
      ]);
}

pw.Table tableoption2(
    {required List<String> list1,
    required String First1name,
    required String First2name,
    required String Last1name,
    required String Last2name,
    required String text,
    double padd = 20,
    pw.FontWeight fontWeight = pw.FontWeight.normal,
    double fontsize: 20,
    required Size size}) {
  return pw.Table(
      border: pw.TableBorder(
        verticalInside: pw.BorderSide(
          color: PdfColors.black,
        ),
        left: pw.BorderSide(
          color: PdfColors.black,
        ),
        bottom: pw.BorderSide(
          color: PdfColors.black,
        ),
        right: pw.BorderSide(
          color: PdfColors.black,
        ),
        top: pw.BorderSide(
          color: PdfColors.black,
        ),
      ),
      children: [
        pw.TableRow(children: [
          pw.Expanded(
            flex: 1,
            child: paddedText(
                text: text,
                padd: 20,
                fontWeight: pw.FontWeight.bold,
                fontSize: 25),
          ),
          pw.Expanded(
            flex: 2,
            child: pw.Column(
              children: list1
                  .map((txt) => paddedText(
                      text: txt,
                      padd: 10,
                      fontSize: 16,
                      fontWeight: pw.FontWeight.normal))
                  .toList(),
            ),
          ),
          pw.Expanded(
            flex: 2,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
              children: ["1 $First1name $Last1name", "2 $First2name $Last2name"]
                  .map(
                    (t) =>
                        //   pw.Column(
                        // children: [
                        paddedText(
                            text: t,
                            fontSize: 20,
                            padd: 20,
                            fontWeight: pw.FontWeight.normal),
                    // pw.SizedBox(
                    //   height: size.height / 10,
                    // )
                    //   ],
                    // ),
                  )
                  .toList(),
            ),
          )
        ])
      ]);
}

pw.TableRow addTextRow(
    {required String text,
    pw.FontWeight fontWeight = pw.FontWeight.normal,
    double fontsize: 20,
    double padd = 20,
    required Size size}) {
  return pw.TableRow(children: [
    paddedText(
        text: text, fontSize: fontsize, padd: padd, fontWeight: fontWeight),
  ]);
}

pw.Table createTable(
  List<pw.TableRow> tablerow,
) {
  return pw.Table(
    defaultColumnWidth: pw.FixedColumnWidth(100),
    defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
    border: pw.TableBorder.all(
      color: PdfColors.black,
    ),
    tableWidth: pw.TableWidth.max,
    children: tablerow,
  );
}

pw.Table headingtable(
    {required Size size,
    required String text,
    double padd = 10,
    pw.FontWeight fontWeight = pw.FontWeight.bold,
    double fontSize: 20}) {
  return createTable([
    addTextRow(
        text: text,
        size: size,
        padd: padd,
        fontWeight: fontWeight,
        fontsize: fontSize),
  ]);
}

pw.Table tableheader2({
  required String text,
  double Hpadd = 4,
  double fontsize = 20,
  pw.FontWeight fontWeight = pw.FontWeight.bold,
  double Vpadd = 22,
}) {
  return pw.Table(
    border: pw.TableBorder.all(
      color: PdfColors.black,
    ),
    children: [
      pw.TableRow(
        children: [
          pw.Padding(
            padding: pw.EdgeInsets.symmetric(
// horizontal: 4,
              horizontal: Hpadd,
              vertical: Vpadd,
            ),
            child: pw.Text(text,
                style:
                    pw.TextStyle(fontSize: fontsize, fontWeight: fontWeight)),
          ),
        ],
      ),
    ],
  );
}
