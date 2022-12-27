// class CreatePdf {
//   Future<void> savefile(List<int> bytes, String fileName) async {
//     final directory = await getApplicationDocumentsDirectory();
//
// //Get directory path
//     final path = directory.path;
//
// //Create an empty file to write PDF data
//     File file = File('$path/$fileName');
//
// //Write PDF data
//     await file.writeAsBytes(bytes, flush: true);
//
// //Open the PDF document in mobile
//     OpenFile.open('$path/$fileName');
//   }
//
//   Future<Uint8List> _readimage(String name) async {
//     final data = await rootBundle.load("assets/$name");
//     return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//   }
// }
