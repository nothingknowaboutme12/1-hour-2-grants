import 'package:cdb/Utiles/utilies.dart';
import 'package:cdb/View/Result/PdfView%20Screen/pdfView.dart';
import 'package:cdb/View/Screen/Evualation8.dart';
import 'package:cdb/View/Screen/Partner9.dart';
import 'package:cdb/View/Screen/ProgramParticipant5.dart';
import 'package:cdb/View/Screen/ProgramPriorty6.dart';
import 'package:cdb/View/Screen/budget4.dart';
import 'package:cdb/View/Screen/general_info1.dart';
import 'package:cdb/View/Screen/locationStatus7.dart';
import 'package:cdb/View/Screen/planing3.dart';
import 'package:cdb/View/Screen/research2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final TextEditingController OrganiztionName;
  // EXECUTIVE DIRECTOR FIRST NAME
  late TextEditingController EdfirstName;
//EXECUTIVE DIRECTOR LAST NAME
  late TextEditingController EdlastName;
  //EXECUTIVE DIRECTOR BIO
  late TextEditingController EdBio;
  // EXECUTIVE DIRECTOR phone
  late TextEditingController EdPhone;
  // EXECUTIVE DIRECTOR Email
  late TextEditingController EdEmail;

  // GRANT CONTACT email Address
  late TextEditingController GcEmail;
  // GRANT CONTACT phone
  late TextEditingController GcPhone;
  // GPROJECT DIRECTOR FIRST NAME
  late TextEditingController PdFirstName;
  // PROJECT DIRECTOR Last NAME
  late TextEditingController PdLastName;
  // PROJECT DIRECTOR Last NAME
  late TextEditingController PdBio;
  //PROJECT COORDINATOR First Name
  late TextEditingController PcFirstName;
  // PROJECT COORDINATOR Last Name
  late TextEditingController PcLastName;
  // PROJECT COORDINATOR BIO
  late TextEditingController PcBio;
  late TextEditingController OrganizationState;

  late TextEditingController establishedYear;
  // String OrganizationState = "Please Select";
  late TextEditingController yearofactive;

  //Amount total budget
  late TextEditingController TotalBudget;
  //AMOUNT SECURED
  late TextEditingController AmountScured;
  // AMOUNT REQUESTED
  late TextEditingController AmountRequested;
  // ENTER CURRENT LOCAL GOVERNMENT INITIATIVES STATEMENT
  late TextEditingController CLGIStatement;
  // ENTER PUBLICIAN NAME
  late TextEditingController PublicianName;
  // ENTER PUBLICIAN NAME QUOTE
  late TextEditingController PQUOTE;
  // ENTER NATIONAL PUBLICIAN NAME
  late TextEditingController NPubliciaName;
  // ENTER NATIONAL PUBLICIAN NAME QUOTE
  late TextEditingController NQUOTE;
  // ENTER THE ALIGNED GOALS OF THE GRANT FUNDER
  late TextEditingController AGGFUNDER;
  // ENTER PROGRAM NAME
  late TextEditingController ProgramStatement;
  // ENTER Mission Statement
  late TextEditingController MissionStatement;
  // ENTER Outcome Statement
  late TextEditingController OutComeStatement;
  // ENTER Goal Statement
  late TextEditingController GoalStatement;
  // ENTER Impact Statement
  late TextEditingController ImpactStatement;
  // ENTER Impact Statement
  // late TextEditingController StatementStatics;
  // ENTER Impact Statement
  late TextEditingController zipCode;
  //input 1
  late TextEditingController input1;
  // ENTER input 2
  late TextEditingController input2;
  // ENTER input 3
  late TextEditingController input3;
  //
  // ENTER outcome 1
  late TextEditingController outcome1;
  // ENTER outcome 2
  late TextEditingController outcome2;
  // ENTER outcome 1
  late TextEditingController outcome3;
  // ENTER Output 2
  late TextEditingController output1;
  // ENTER Output 1
  late TextEditingController output2;
  // ENTER Output 2
  late TextEditingController output3;
  // ENTER %Output 2
  late TextEditingController Percentageoutput1;
  // ENTER %Output 1
  late TextEditingController Percentageoutput2;
  // ENTER %Output 2
  late TextEditingController Percentageoutput3;
  // ENTER Meassure 1
  late TextEditingController Measure1;
  // ENTER Meassure 2
  late TextEditingController Measure2;
  // ENTER Meassure 3
  late TextEditingController Measure3;
  // ENTER verification 1
  late TextEditingController Verification1;
  // ENTER verification 1
  late TextEditingController Verification2;
  // ENTER verification 1
  late TextEditingController Verification3;
  // ENTER PARTNER 1
  late TextEditingController Partner1;
  // ENTER PARTNER1PROVIDER
  late TextEditingController Partner1Provides;
  // ENTER PARTNER 2
  late TextEditingController Partner2;
  // ENTER PARTNER2PROVIDER
  late TextEditingController Partner2Provides;
  // ENTER PARTNER 3
  late TextEditingController Partner3;
  // ENTER PARTNER3PROVIDER
  late TextEditingController Partner3Provides;

  late TextEditingController ProgramStatus;
  late TextEditingController applicableCategory;
  late TextEditingController programPeriorty;
  @override
  void initState() {
    OrganiztionName = TextEditingController();
    EdfirstName = TextEditingController();
    EdlastName = TextEditingController();
    EdBio = TextEditingController();
    EdPhone = TextEditingController();
    EdEmail = TextEditingController();
    GcEmail = TextEditingController();
    GcPhone = TextEditingController();
    PdFirstName = TextEditingController();
    PdLastName = TextEditingController();
    PdBio = TextEditingController();
    PcFirstName = TextEditingController();
    PcLastName = TextEditingController();
    PcBio = TextEditingController();
    TotalBudget = TextEditingController();
    AmountScured = TextEditingController();
    AmountRequested = TextEditingController();
    CLGIStatement = TextEditingController();
    AGGFUNDER = TextEditingController();
    ProgramStatement = TextEditingController();
    MissionStatement = TextEditingController();
    OutComeStatement = TextEditingController();
    ImpactStatement = TextEditingController();
    // StatementStatics = TextEditingController();
    GoalStatement = TextEditingController();
    zipCode = TextEditingController();
    input1 = TextEditingController();
    input2 = TextEditingController();
    input3 = TextEditingController();
    outcome1 = TextEditingController();
    outcome2 = TextEditingController();
    outcome3 = TextEditingController();
    output1 = TextEditingController();
    output2 = TextEditingController();
    output3 = TextEditingController();
    Measure1 = TextEditingController();
    Measure2 = TextEditingController();
    Measure3 = TextEditingController();
    Verification1 = TextEditingController();
    Verification2 = TextEditingController();
    Verification3 = TextEditingController();
    Partner1Provides = TextEditingController();
    Partner1 = TextEditingController();
    Partner2 = TextEditingController();
    Partner2Provides = TextEditingController();
    Partner3 = TextEditingController();
    Partner3Provides = TextEditingController();
    OrganizationState = TextEditingController();
    establishedYear = TextEditingController();
    yearofactive = TextEditingController();
    ProgramStatus = TextEditingController();
    applicableCategory = TextEditingController();
    programPeriorty = TextEditingController();
    PublicianName = TextEditingController();
    PQUOTE = TextEditingController();
    NPubliciaName = TextEditingController();

    NQUOTE = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    OrganiztionName.dispose();
    EdfirstName.dispose();
    EdlastName.dispose();
    EdEmail.dispose();
    EdPhone.dispose();
    EdBio.dispose();

    GcEmail.dispose();
    GcPhone.dispose();
    PdFirstName.dispose();
    PdLastName.dispose();
    PdBio.dispose();
    PcFirstName.dispose();
    PcLastName.dispose();
    PcBio.dispose();
    TotalBudget.dispose();
    AmountRequested.dispose();
    AmountScured.dispose();

    CLGIStatement.dispose();
    PublicianName.dispose();
    NPubliciaName.dispose();
    PQUOTE.dispose();
    NQUOTE.dispose();
    AGGFUNDER.dispose();
    ProgramStatement.dispose();

    ImpactStatement.dispose();
    OutComeStatement.dispose();
    // StatementStatics.dispose();
    MissionStatement.dispose();
    GoalStatement.dispose();
    zipCode.dispose();
    input1.dispose();
    input2.dispose();
    input3.dispose();
    output1.dispose();
    output2.dispose();
    output3.dispose();
    outcome1.dispose();
    outcome2.dispose();
    outcome3.dispose();
    Measure1.dispose();
    Measure2.dispose();
    Measure3.dispose();
    Percentageoutput1.dispose();
    Percentageoutput2.dispose();
    Percentageoutput3.dispose();
    Verification1.dispose();
    Verification2.dispose();
    Verification3.dispose();
    Partner1.dispose();
    Partner2.dispose();
    Partner3.dispose();
    Partner1Provides.dispose();
    Partner2Provides.dispose();
    Partner3Provides.dispose();
    OrganizationState.dispose();
    establishedYear.dispose();
    yearofactive.dispose();
    applicableCategory.dispose();
    programPeriorty.dispose();
    establishedYear.dispose();
    yearofactive.dispose();
    ProgramStatus.dispose();
    applicableCategory.dispose();
    programPeriorty.dispose();
    super.dispose();
  }

  String pickedImagePath = "";
  bool status = false;
  XFile? file;
  Future<void> pickImageFromGalley() async {
    ImagePicker picker = await ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    if (image.path.isNotEmpty) {
      setState(() {
        file = image;
        pickedImagePath = image.path;
      });
    }
  }

  crossImageFun() async {
    if (pickedImagePath.isNotEmpty) {
      setState(() {
        pickedImagePath = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("selctd path${pickedImagePath}");
    print("Build is called ");
    print("Size of screen is width ${size.width}, and height ${size.height}");
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width > 600 ? size.width / 5 : size.width / 30,
                vertical: size.height / 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 10,
                ),
                Container(
                  height: size.height / 6,
                  width: size.width > 600 ? size.width / 4 : size.width / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      size.width > 360 ? size.height / 90 : size.height / 80,
                ),
                Container(
                  // height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height / 13,
                      ),
                      Container(
                        height: size.height / 8,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff2A3990),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1 Hour 2 Grants",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                  wordSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width > 600 ? 25 : 20),
                            ),
                            SizedBox(
                              height: size.height / 80,
                            ),
                            Text(
                              "(CDB Do It Yourself Grant Template Builder)",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width > 600 ? 15 : 15,
                                // fontWeight: FontWeight.bold,
                                // fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GeneralInfo(
                        size: size,
                        imagepath: pickedImagePath,
                        CrossImageFun: crossImageFun,
                        selectImageFun: pickImageFromGalley,
                        OrganizationState: OrganizationState,
                        establishedYear: establishedYear,
                        yearofactive: yearofactive,
                        OrganiztionName: OrganiztionName,
                        EdfirstName: EdfirstName,
                        EdlastName: EdlastName,
                        EdBio: EdBio,
                        EdPhone: EdPhone,
                        EdEmail: EdEmail,
                        GcPhone: GcPhone,
                        GcEmail: GcEmail,
                        PdFirstName: PdFirstName,
                        PdLastName: PdLastName,
                        PdBio: PdBio,
                        PcFirstName: PcFirstName,
                        PcLastName: PcLastName,
                        PcBio: PcBio,
                      ),
                      Reasearch(
                        size: size,
                        PublicianName: PublicianName,
                        PQUOTE: PQUOTE,
                        NPublicianName: NPubliciaName,
                        NQUOTE: NQUOTE,
                        CLGIStatement: CLGIStatement,
                      ),
                      Planing(
                        size: size,
                        ProgramStatement: ProgramStatement,
                        MissionStatement: MissionStatement,
                        GoalStatement: GoalStatement,
                        OutComeStatement: OutComeStatement,
                        AGGFUNDER: AGGFUNDER,
                        ProgramImpact: ImpactStatement,
                        ProgramStatus: ProgramStatus,
                      ),
                      Budget4(
                          size: size,
                          TotalBudget: TotalBudget,
                          AmountScured: AmountScured,
                          AmountRequested: AmountRequested),
                      ProgramParticipant5(
                          size: size, applicableCategory: applicableCategory),
                      Participant6(size: size, programpriorty: programPeriorty),
                      LocationStatus(size: size, zipCode: zipCode),
                      Evulations(
                        size: size,
                        input1: input1,
                        input2: input2,
                        input3: input3,
                        output1: output1,
                        output2: output2,
                        output3: output3,
                        outcome1: outcome1,
                        outcome2: outcome2,
                        outcome3: outcome3,
                        Measure1: Measure1,
                        Measure2: Measure2,
                        Measure3: Measure3,
                        Verification1: Verification1,
                        Verification2: Verification2,
                        Verification3: Verification3,
                      ),
                      Partner(
                          size: size,
                          Partner1: Partner1,
                          Partner2: Partner2,
                          Partner3: Partner3,
                          Partner1Provides: Partner1Provides,
                          Partner2Provides: Partner2Provides,
                          Partner3Provides: Partner3Provides),
                      Container(
                        height: size.height / 13,
                        margin: EdgeInsets.all(1.5),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (OrganiztionName.text.isNotEmpty &&
                                EdfirstName.text.isNotEmpty &&
                                EdlastName.text.isNotEmpty &&
                                EdBio.text.isNotEmpty &&
                                EdEmail.text.isNotEmpty &&
                                EdPhone.text.isNotEmpty &&
                                GcPhone.text.isNotEmpty &&
                                GcEmail.text.isNotEmpty &&
                                PdFirstName.text.isNotEmpty &&
                                PdLastName.text.isNotEmpty &&
                                PdBio.text.isNotEmpty &&
                                PcFirstName.text.isNotEmpty &&
                                PcLastName.text.isNotEmpty &&
                                PcBio.text.isNotEmpty &&
                                AGGFUNDER.text.isNotEmpty &&
                                ProgramStatement.text.isNotEmpty &&
                                MissionStatement.text.isNotEmpty &&
                                GoalStatement.text.isNotEmpty &&
                                OutComeStatement.text.isNotEmpty &&
                                ImpactStatement.text.isNotEmpty &&
                                ProgramStatus.text.isNotEmpty &&
                                CLGIStatement.text.isNotEmpty &&
                                PublicianName.text.isNotEmpty &&
                                PQUOTE.text.isNotEmpty &&
                                NPubliciaName.text.isNotEmpty &&
                                NQUOTE.text.isNotEmpty &&
                                OrganizationState.text.isNotEmpty &&
                                yearofactive.text.isNotEmpty &&
                                establishedYear.text.isNotEmpty &&
                                TotalBudget.text.isNotEmpty &&
                                AmountRequested.text.isNotEmpty &&
                                AmountScured.text.isNotEmpty &&
                                applicableCategory.text.isNotEmpty &&
                                programPeriorty.text.isNotEmpty &&
                                zipCode.text.isNotEmpty &&
                                input1.text.isNotEmpty &&
                                input2.text.isNotEmpty &&
                                input3.text.isNotEmpty &&
                                output1.text.isNotEmpty &&
                                output2.text.isNotEmpty &&
                                output3.text.isNotEmpty &&
                                outcome1.text.isNotEmpty &&
                                outcome2.text.isNotEmpty &&
                                outcome3.text.isNotEmpty &&
                                Verification1.text.isNotEmpty &&
                                Verification2.text.isNotEmpty &&
                                Verification3.text.isNotEmpty &&
                                Measure1.text.isNotEmpty &&
                                Measure2.text.isNotEmpty &&
                                Measure3.text.isNotEmpty &&
                                Partner1.text.isNotEmpty &&
                                Partner2.text.isNotEmpty &&
                                Partner3.text.isNotEmpty &&
                                Partner1Provides.text.isNotEmpty &&
                                Partner2Provides.text.isNotEmpty &&
                                pickedImagePath != null &&
                                Partner3Provides.text.isNotEmpty) {
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => PdfView(
                                    OName: OrganiztionName.text,
                                    EdFName: EdfirstName.text,
                                    EdLName: EdfirstName.text,
                                    EdBio: EdBio.text,
                                    EdNumber: EdPhone.text,
                                    EdEmail: EdEmail.text,
                                    GcNumber: GcPhone.text,
                                    GcEmail: GcEmail.text,
                                    PdFName: PdFirstName.text,
                                    PdLName: PdLastName.text,
                                    PdBio: PdLastName.text,
                                    PcFName: PcFirstName.text,
                                    PcLName: PcLastName.text,
                                    PcBio: PcBio.text,
                                    OState: OrganizationState.text,
                                    yearEsatablished: establishedYear.text,
                                    OActiveyear: yearofactive.text,
                                    CLGIStatement: CLGIStatement.text,
                                    GGFunder: AGGFUNDER.text,
                                    ProgramStatement: ProgramStatement.text,
                                    MissionStatement: MissionStatement.text,
                                    GoalStatement: GoalStatement.text,
                                    OutComeStatement: OutComeStatement.text,
                                    ImpactStatement: ImpactStatement.text,
                                    // StaticsStatement: StatementStatics.text,
                                    ToalBudget: TotalBudget.text,
                                    AmountScrud: AmountScured.text,
                                    AmountRequested: AmountRequested.text,
                                    ApplicableCategory: applicableCategory.text,
                                    ProgramPeriorty: programPeriorty.text,
                                    ProgramStatus: ProgramStatus.text,
                                    StateRegion: zipCode.text,
                                    Input1: input1.text,
                                    Input2: input2.text,
                                    Input3: input3.text,
                                    OutCome1: outcome1.text,
                                    OutCome2: outcome2.text,
                                    OutCome3: outcome3.text,
                                    Output1: output1.text,
                                    Output2: output2.text,
                                    Output3: output3.text,
                                    Measure1: Measure1.text,
                                    Measure2: Measure2.text,
                                    Measure3: Measure3.text,
                                    Verification1: Verification1.text,
                                    Verification2: Verification2.text,
                                    Verification3: Verification3.text,
                                    Partner1: Partner1.text,
                                    Partner2: Partner2.text,
                                    Partner3: Partner3.text,
                                    Partner1Provide: Partner1Provides.text,
                                    Partner2Provide: Partner2Provides.text,
                                    Partner3Provide: Partner3Provides.text,
                                    NPName: NPubliciaName.text,
                                    NPQuote: NQUOTE.text,
                                    LPName: PublicianName.text,
                                    LPQuote: PQUOTE.text,
                                    ProgramCategory: applicableCategory.text,
                                    imagepath: pickedImagePath,
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  duration: Duration(seconds: 1),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width / 50),
                                  action: SnackBarAction(
                                    label: "Close",
                                    textColor: listtilecolor,
                                    onPressed: () {},
                                  ),
                                  content: Text(
                                      "PLease fulfill the complete requirement"),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: listtilecolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            // padding: EdgeInsets.symmetric(
                            //     horizontal: size.width / 2.5, vertical: 0),
                          ),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width > 600 ? 20 : 13,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: size.height / 40,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
