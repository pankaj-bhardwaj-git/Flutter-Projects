import 'package:flutter/material.dart';
import 'ESRS.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';
// import 'main.dart';

double sum = 0;
double sum_sapstotal = 0;
double sum_saps1 = 0;
double sum_saps2 = 0;
double sum_saps3 = 0;
double sum_saps4 = 0;
double sum_msa = 0;
double sum_bprs = 0;
double sum_saps = 0.0;

class all_scale_page extends StatefulWidget {
  // all_scale_page({}) : super(key: key);

  @override
  State<all_scale_page> createState() => _all_scale_pageState();
}

class _all_scale_pageState extends State<all_scale_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: (() {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => Welcome()));
          //   }),
          // ),
          title: Text('SCALES'),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "EPS Scales",
                      style: TextStyle(
                          fontFamily: 'Notoserif',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => scale()));
                        }),
                        style:
                        ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: ListTile(
                          title: Text(
                            'ESRS Scales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Msa_scales()));
                          sum_msa = 0;
                        }),
                        style:
                        ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: ListTile(
                          title: Text(
                            'MSA Scales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Aims_page()));
                        }),
                        style:
                        ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: ListTile(
                          title: Text(
                            'AIMS Scales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "Schizophrenia",
                      style: TextStyle(
                          fontFamily: 'Notoserif',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BPRS_scale()));
                        }),
                        style:
                        ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: ListTile(
                          title: Text(
                            'BPRS Scales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SAPS_scale1()));
                        }),
                        style:
                        ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: ListTile(
                          title: Text(
                            'SAPS Scales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class Msa_scales extends StatefulWidget {
  // Msa_scales({}) : super(key: key);

  @override
  State<Msa_scales> createState() => _Msa_scalesState();
}

class _Msa_scalesState extends State<Msa_scales> {
  double slider9Value = 0.0;
  double slider10Value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MSA Scales",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text("MODIFIED SIMPSON-ANGUS SCALE (MSAS)",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    SizedBox(height: 10),
                    Text(
                        "Each item is rated on a 5-point scale of severity. Select the rating that best describes the subject’s present condition.",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Gait",
                        des:
                        "The patient is examined as he walks into the examining room: his gait, the swing of his arms, his general posture all form the basis for an overall score for this item.",
                        des1: "0: Normal",
                        des2:
                        "1: Diminution in swing while the subject is walking",
                        des3:
                        "2: Marked diminution in swing with obvious rigidity",
                        des4:
                        "3: stiff gait with arms held rigidly before the abdomen",
                        des5:
                        "4: stooped ,shuffling gait with propulsion and retro pulsion",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Arm Dropping",
                        des:
                        "The patient and the examiner both raise their arms to shoulder height and let them fall to their sides. In a normal subject, a stout slap is heard as the arms hit the sides. In the patient with extreme Parkinson’s Syndrome, the arms fall very slowly",
                        des1: "0: Normal",
                        des2:
                        "1: Fall slowed slightly with lwess audible contact and little rebound",
                        des3: "2: Fall slowed. no rebound",
                        des4: "3: Marked slowing,no slap at all",
                        des5: "4: Arms fall as though against resistance",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Shoulder Shaking",
                        des:
                        "The subject’s arms are bent at a right angle at the elbow and are taken one at a time by the examiner, who also grasps one hand and also clasps the other around the subject’s elbow. The subject’s upper arm is pushed to and fro, and the humerus is externally rotated. The degree of resistance from normal to extreme rigidity is scored as follows:",
                        des1: "0: Normal",
                        des2: "1: Slight stiffness and resistance",
                        des3:
                        "3: Marked rigidity with difficulty in passive movement",
                        des4:
                        "3: stiff gait with arms held rigidly before the abdomen",
                        des5:
                        "4: Extreme stiffness and rigidity with almost a frozen joint",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Elbow rigidity",
                        des:
                        "The elbow joints are separately bent at right angles and passively extended and flexed, with the subject’s biceps observed and simultaneously palpated. The resistance to this procedure is rated.",
                        des1: "0: Normal,free fall",
                        des2: "1: Slight stiffness and resistance",
                        des3: "2: Moderate stiffness and resistance",
                        des4:
                        "3: Marked rigidity with difficulty in passive movement",
                        des5:
                        "4: Extreme stiffness and rigidity with almost a frozen joint",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Wrist rigidity",
                        des:
                        "The wrist is held in one hand and the fingers held by the examiner’s other hand, with the wrist moved to extension, flexion, and ulnar and radial deviation, or the extended wrist is allowed to fall under its own weight, or the arm can be grasped above the wrist and shaken to and fro. A “1” score would be a hand that extends easily, falls loosely, or flaps easily upwards and downwards.",
                        des1: "0: Normal,free fall",
                        des2: "1: Slight stiffness and resistance",
                        des3: "2: Moderate stiffness and resistance",
                        des4:
                        "3: Marked rigidity with difficulty in passive movement",
                        des5:
                        "4: Extreme stiffness and rigidity with almost a frozen joint",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Head Rotation",
                        des:
                        "The subject sits or stands and is told that the examiner will move his head from side to side, that it will not hurt, and that he should try and relax. (Questions about pain in the cervical area or difficulty in moving his head should be obtained to avoid causing any pain.) Clasp the subject’s head between the two hands with the fingers on the back of the neck. Gently rotate the head in a circular motion 3 times and evaluate the muscular resistance to this movement.",
                        des1: "0: Normal",
                        des2: "1: Slight resistance to movement",
                        des3:
                        "2: Resistance is apparent and the time of rotation is shortened",
                        des4: "3: Resistance is obvious and rotation is slowed",
                        des5:
                        "4: Head appears stiff and rotation is difficult to carry out",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Glabella Tap",
                        des:
                        "The subject is told to open his eyes and not to blink. The glabella region is tapped at a steady, rapid speed. Note the number of times that the subject blinks in succession. Take care to stand behind the subject so that he does not observe the movement of the tapping finger. A full blink need not be observed; there may be a contraction of the infraorbital muscle producing a twitch each time a stimulus is delivered. Vary the speed of tapping to assure that the muscle contraction is related to the tap.",
                        des1: "0: 0 to 5 blinks",
                        des2: "1: 6 to 10 blinks",
                        des3: "2: 11 to 15 blinks",
                        des4: "3: 16 to 20 blinks",
                        des5: "4: 21 or more blinks",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Tremor",
                        des:
                        "The subject is observed walking into the examining room and then is re-examined for this item with his arms extended at right angles to the body and the fingers spread out as far as possible.",
                        des1: "0: Normal",
                        des2:
                        "1: Mild finger tremor,obvious to sight and touch",
                        des4: "2: Persistant tremor of one or more limbs",
                        des3: "2: Tremor of hand or arm occuring spasmodically",
                        des5: "4: whole body tremor",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Salivation",
                        des:
                        "The subject is observed while talking and then asked to open his mouth to elevate his tongue.",
                        des1: "0: Normal",
                        des2:
                        "1: Excess salivation so that drooling takes place if mouth is opened and tongue is raised",
                        des4:
                        "2: Excess salivation is present and might occasionally result in difficulty in speaking",
                        des3:
                        "3: Speaking with difficulty because of excess drooling",
                        des5: "4: Frank drooling",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Akathisia",
                        des:
                        "The subject is observed for restlessness. If restlessness is noted, ask, “Do you feel restless or jittery inside; is it difficult to sit still?” Subjective response is not necessary for scoring, but subject report can help make the assessment.",
                        des1: "0: Normal",
                        des2:
                        "1: Mild restlessness observed, e.g., occasional jiggling of the foot occurs when the subject is seated",
                        des4:
                        '2: Moderate restlessness observed, e.g., on several occasions, the subject jiggles his foot, crosses and uncrosses his legs, or twists a part of the body',
                        des3:
                        '3: Restlessness is frequently observed, e.g., the subject’s foot or legs are moving most of the time',
                        des5:
                        '4:  Restlessness persistently observed, e.g., the subject cannot sit still, might get up and walk',
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.87,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: TextButton(
                        onPressed:((){setState((){sum_msa = sum_msa+0;});}) ,
                        child: Text(
                          'Total Score',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "$sum_msa",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.redAccent),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.87,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(35.0),
                        ),
                      ),
                      child: TextButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: ()=> printDocmsa(),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.87,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        child:Center(
                          child: Text(
                            'Save as PDF',
                            style: TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
  Future<void> printDocmsa() async {
    final doc = pw.Document();
    doc.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return  pw.Column(
              children: [
                pw.SizedBox(
                  child: pw.Text('Results',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                ),
                pw.SizedBox(height: 10.0,),

                pw.SizedBox(height: 25,),
                pw.Center(child: pw.Text("MSA Scale",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 30))),

                pw.SizedBox(height: 25,),
                pw.Table(border: pw.TableBorder.all(
                  style: pw.BorderStyle.solid,
                  width: 2),

                  children: [
                    pw.TableRow(
                        children:[
                          pw.Column(
                              children:[
                                pw.SizedBox(height: 5.0,),
                                pw.Text('Pateint Name',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                pw.SizedBox(height: 5.0,),
                              ]
                          ),
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Pateint Name',style: pw.TextStyle(fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    pw.TableRow(
                        children:[
                          pw.Column(
                              children:[
                                pw.SizedBox(height: 5.0,),
                                pw.Text('Rater Name',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                pw.SizedBox(height: 5.0,),
                              ]
                          ),
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Rater Name',style: pw.TextStyle(fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    pw.TableRow(
                        children:[
                          pw.Column(
                              children:[
                                pw.SizedBox(height: 5.0,),
                                pw.Text('Date',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                pw.SizedBox(height: 5.0,),
                              ]
                          ),
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 5.0,),
                              pw.Text(DateFormat('yyyy-MM-dd').format(DateTime.now()),style: pw.TextStyle(fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    pw.TableRow(
                        children:[
                          pw.Column(
                              children:[
                                pw.SizedBox(height: 5.0,),
                                pw.Text('Total MSA Score',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                pw.SizedBox(height: 5.0,),
                              ]
                          ),
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 5.0,),
                              pw.Text('$sum_msa',style: pw.TextStyle(fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),


                  ],
                ),
              ]
          );
        }));
    await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => doc.save());// Page
  }
}

class BPRS_scale extends StatefulWidget {
  // BPRS_scale({}) : super(key: key);

  @override
  State<BPRS_scale> createState() => _BPRS_scaleState();
}

class _BPRS_scaleState extends State<BPRS_scale> {
  double k = 0;
  double m = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BPRS Scale'),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                BPRS_scale_custom(
                    title: 'Somantic Concern',
                    des:
                    "Degree of concern over present bodily health. Rate the degree to which physical health is perceived as a problem by the patient, whether complaints have a realistic basis or not."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: 'Anxiety',
                    des:
                    "Worry, fear, or over-concern for present or future. Rate solely on the basis of verbal report of patient’s own subjective experiences. Do not infer anxiety from physical signs or from neurotic defense mechanisms"),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: 'Emotional Withdrawal',
                    des:
                    "Deficiency in relating to the interviewer and to the interviewer situation. Rate only the degree to which the patient gives the impression of failing to be in emotional contact with other people in the interview situation"),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Conceptual Disorganisation",
                    des:
                    "Degree to which the thought processes are confused, disconnected, or disorganized. Rate on the basis of integration of the verbal products of the patient; do not rate on the basis of patient’s subjective impression of his own level of functioning"),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Guilt Feelings",
                    des:
                    "Over-concern or remorse for past behavior. Rate on the basis of the patient’s subjective experiences of guilt as evidenced by verbal report with appropriate affect; do not infer guilt feelings from depression, anxiety or neurotic defenses."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Tensions",
                    des:
                    "Physical and motor manifestations of tension “nervousness”, and heightened activation level. Tension should be rated solely on the basis of physical signs and motor behavior and not on the basis of subjective experiences of tension reported by the patient."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Mannerisms and Posturing",
                    des:
                    "Unusual and unnatural motor benavior, the type of motor behavior which causes certain mental patients to stand out in a crowd of normal people. Rate only abnormality of movements; do not rate simple heightened motor activity here"),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Grandiosity",
                    des:
                    "Exaggerated self-opinion, conviction of unusual ability or powers. Rate only on the basis of patient’s statements about himself or self-in-relation-to-others, not on the basis of his demeanor in the interview situation."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Depressive Mood",
                    des:
                    "Despondency in mood, sadness. Rate only degree of despondency; do not rate on the basis of inferences concerning depression based upon general retardation and somatic complaints"),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Hostility",
                    des:
                    "Animosity, contempt, belligerence, disdain for other people outside the interview situation. Rate solely on the basis of the verbal report of feelings and actions of the patient toward others; do not infer hostility from neurotic defenses, anxiety, nor somatic complaints. (Rate attitude toward interviewer under “uncooperativeness"),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Suspiciousness",
                    des:
                    "Brief (delusional or otherwise) that others have now, or have had in the past, malicious or discriminatory intent toward the patient. On the basis of verbal report, rate only those suspicions which are currently held whether they concern past or present circumstances."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Hallucinatory Behaviour",
                    des:
                    "Perceptions without normal external stimulus correspondence. Rate only those experiences which are reported to have occurred within the last week and which are described as distinctly different from the thought and imagery processes of normal people."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Motor Retardation",
                    des:
                    "Reduction in energy level evidenced in slowed movements. Rate on the basis of observed behavior of the patient only; do not rate on the basis of patient’s subjective impression of own energy level"),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Uncooperativeness",
                    des:
                    "Evidence of resistance, unfriendliness, resentment, and lack of readiness to cooperate with the interviewer. Rate only on the basis of the patient’s attitude and responses to the interviewer and the interview situation; do not rate on basis of reported resentment or uncooperativeness outside the interview situation."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Unusual Thought Content",
                    des:
                    "Unusual, odd, strange or bizarre thought content. Rate here the degree of unusualness, not the degree of disorganization of thought processes."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Blunted Affect",
                    des:
                    "Reduced emotional tone, apparent lack of normal feeling or involvement."),
                SizedBox(
                  height: 20,
                ),
                BPRS_scale_custom(
                    title: "Excitement",
                    des:
                    "Heightened emotional tone, agitation, increased reactivity"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Align(
                    child: Material(
                      color: Colors.white,
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      shadowColor: Colors.grey,
                      child: Container(
                        width: 360,
                        child: Column(
                          children: [
                            Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Disorientation",
                                        style: TextStyle(
                                            fontSize: 25, fontFamily: 'NotoSerif'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text(
                                        "Confusion or lack of proper association for person, place or time",
                                        style: TextStyle(
                                            fontFamily: 'Dosis', fontSize: 18),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    Slider(
                                        min: 0.0,
                                        max: 7.0,
                                        divisions: 7,
                                        value: k,
                                        activeColor: Colors.redAccent,
                                        label: k.round().toString(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            k = newValue;
                                            sum_bprs = sum_bprs + k - m;
                                            m = k;
                                            sum_bprs = sum_bprs;
                                          });
                                        }),
                                    Container(
                                        child: Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                '0: Not Assesed',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                '1: Not Present',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                '2:  Very Mild',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                '3: Mild',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                '4: Moderate',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                '5: Moderately Severe',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                '6: Severe',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                '7: Extremely Severe',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Score = $k',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            )
                                          ],
                                        ))
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Total Score = $sum_bprs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.redAccent),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      style:
                      ElevatedButton.styleFrom(primary: Colors.redAccent),
                      child: ListTile(
                        title: Text(
                          'Submit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}

class SAPS_scale1 extends StatefulWidget {
  // SAPS_scale1({}) : super(key: key);

  @override
  State<SAPS_scale1> createState() => _SAPS_scale1State();
}

class _SAPS_scale1State extends State<SAPS_scale1> {
  double slider1 = 0;
  double slider2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HALLUCINATIONS'),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                custom(
                    title: 'Auditory Hallucinations',
                    des:
                    'The pateint reports voices noise which no one else hears'),
                SizedBox(
                  height: 20,
                ),
                custom(
                    title: 'Voices Commenting',
                    des:
                    'The pateint reports a voice which makes a running commentery on his behaviour or thoughts'),
                SizedBox(
                  height: 20,
                ),
                custom(
                    title: 'Voices Conversing',
                    des:
                    'The pateints reports having two or more voices conversing'),
                SizedBox(
                  height: 20,
                ),
                custom(
                    title: 'Somantic or Tactile Hallucinations',
                    des:
                    'The pateint reports experiencing peculiar physical sensations in the body'),
                SizedBox(
                  height: 20,
                ),
                custom(
                    title: 'Olfactory Hallucinations',
                    des:
                    'The pateint reports experiencing unusual smell which no one else notices'),
                SizedBox(
                  height: 20,
                ),
                custom(
                    title: 'Visual Hllucinations',
                    des:
                    'The pateint sees shapes or people that are not actually present'),
                SizedBox(
                  height: 20,
                ),
                custom(
                  title: "try",
                  des: "try",
                ),
                SizedBox(height: 40,
               child: TextButton(child: Text("total"),onPressed: ((){setState((){sum_sapstotal = sum_saps1;});}),), ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Total Score = $sum_saps1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text(
                                "Back",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SAPS_scale2(sum_saps1: sum_saps1,)));
                            }),
                            style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text("Next", style: TextStyle(fontSize: 25)),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class SAPS_scale2 extends StatefulWidget {
  // SAPS_scale2({}) : super(key: key);
  double sum_saps1;
  SAPS_scale2({required this.sum_saps1});
  @override
  State<SAPS_scale2> createState() => _SAPS_scale2State(sum_saps1: sum_saps1);
}

class _SAPS_scale2State extends State<SAPS_scale2> {
  double slider1 = 0;
  double slider2 = 0;
  double sum_saps1;
  _SAPS_scale2State({required this.sum_saps1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Delusions'),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                SAPS_scale_custom2(
                    title: "Persecutory Delusions",
                    des:
                    "The pateint believes he is being conspired against or persecuted in some way"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Delusion of Jealousy",
                    des:
                    "The pateint belives that his spouse is having an affair with someone"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Delusion of Guilt or SIN",
                    des:
                    "The pateint believes that he has done some terrible sin or done something unforgivable"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Gradiose Delusions",
                    des:
                    "The pateint believes he has some special power or abilities"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Religious Delusions",
                    des:
                    "The patient is preoccupied with false beliefs of a religious nature."),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Somantic Delusions",
                    des:
                    "The patient believes that somehow his body is diseased, abnormal, or change"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Delusion of Reference",
                    des:
                    "The patient believes that insignificant remarks or events refer to him or have special meaning"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Delusion of Being Controlled",
                    des:
                    "The patient feels that his feelings or actions are controlled by some outside force"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Delusion of Mind Reading",
                    des:
                    "The patient feels that people can read his mind or know his thoughts."),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Thought Broadcasting",
                    des:
                    "The patient believes that his thoughts are broadcast so that he himself or others can hear them"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Thought Insertion",
                    des:
                    "The patient believes that thoughts that are not his own have been inserted into his mind"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom2(
                    title: "Thought Withdrawal",
                    des:
                    "The patient believes that thoughts have been taken away from his mind"),
                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 40,
                  child: TextButton(onPressed: ((){setState((){sum_sapstotal=sum_saps1+ sum_saps2;});}), child: Text("Total"))
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Total Score = $sum_saps2",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text(
                                "Back",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SAPS_scale3(sum_saps2: sum_saps2,)));
                            }),
                            style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text("Next", style: TextStyle(fontSize: 25)),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class SAPS_scale3 extends StatefulWidget {
  // SAPS_scale3({}) : super(key: key);
  double sum_saps2;
  SAPS_scale3({required this.sum_saps2});
  @override
  State<SAPS_scale3> createState() => _SAPS_scale3State(sum_saps2:sum_saps2);
}

class _SAPS_scale3State extends State<SAPS_scale3> {
  double slider1 = 0;
  double slider2 = 0;
  double sum_saps2;
  _SAPS_scale3State({required this.sum_saps2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bizzare Behaviour'),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                SAPS_scale_custom3(
                    title: "Clothing and Appereance",
                    des:
                    "The patient dresses in an unusual manner or does other strange things to alter his appearanc"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom3(
                    title: "Social and Sexual Behaviour",
                    des:
                    "The patient may do things considered inappropriate according to usual social norms (e.g., masturbating in public)"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom3(
                    title: 'Agressive and agitated behaviour',
                    des:
                    "The patient may behave in an aggressive, agitated manner, often impredictably"),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom3(
                    title: 'Repeatitive Behaviour',
                    des:
                    'The patient develops a set of repetitive actions or rituals that he must perform over and over'),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom3(title: "title", des: "es"),
                SizedBox(
                  height: 20,
                  child:TextButton(onPressed: ((){setState((){sum_sapstotal = sum_sapstotal+sum_saps3;});}), child: Text("total"))
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Total Score = $sum_saps3",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text(
                                "Back",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SAPS_scale4()));
                            }),
                            style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text("Next", style: TextStyle(fontSize: 25)),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class SAPS_scale4 extends StatefulWidget {
  // SAPS_scale4({}) : super(key: key);

  @override
  State<SAPS_scale4> createState() => _SAPS_scale4State();
}

class _SAPS_scale4State extends State<SAPS_scale4> {
  double slider1 = 0;
  double slider2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Positive Formal Thought Disorder'),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                SAPS_scale_custom4(
                    title: 'Derailment',
                    des:
                    'A pattern of speech in which ideas slip off track onto ideas obliquely related or unrelated'),
                SizedBox(
                  height: 20,
                ),
                custom(
                    title: 'Tangentiality',
                    des:
                    'The patient replies to a question in an oblique or irrelevant manner'),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom4(
                    title: 'Incoherence',
                    des:
                    'A pattern of speech that is essentially incomprehensible at times.'),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom4(
                    title: 'Illogiaclity',
                    des:
                    'A pattern of speech in which conclusions are reached that do not follow logically.'),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom4(
                    title: 'Circumstantiallity',
                    des:
                    'A pattern of speech that is very indirect and delayed in reaching its goal idea'),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom4(
                    title: 'Distractible Speech',
                    des:
                    'The patient is distracted by nearby stimuli which interrupt his flow of speech'),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom4(
                    title: 'Pressure of Speech',
                    des:
                    'The patient’s speech is rapid and difficult to interrupt; the amount of speech produced is greater than that considered normal.'),
                SizedBox(height: 20),
                SAPS_scale_custom4(
                    title: 'Changing',
                    des:
                    'A pattern of speech in which sounds rather than meaningful relationships govern word choice'),
                SizedBox(
                  height: 20,
                ),
                SAPS_scale_custom4(title: "title", des: "des"),
                SizedBox(
                  height: 40,
                  child: TextButton(onPressed: ((){setState((){sum_sapstotal = sum_sapstotal+sum_saps4;});}), child: Text("total")),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Total Score = $sum_saps4",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text(
                                "Back",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                        child:TextButton(onPressed: ()=> printDoc(),child: Text("pdf"))
                      ),
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => all_scale_page()));
                            }),
                            style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text("Submit", style: TextStyle(fontSize: 25)),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
Future<void> printDoc() async {
  final doc = pw.Document();
  doc.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return  pw.Column(
            children: [
              pw.SizedBox(
                child: pw.Text('Pateint registration Details'),
              ),
              pw.SizedBox(height: 10.0,),
              pw.Table(
                border: pw.TableBorder.all(
                    style: pw.BorderStyle.solid,
                    width: 2),
                children: [
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Name'),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('Pateint Name'),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Doctor'),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('Doctor Name'),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),


                ],
              ),
              pw.SizedBox(height: 25,),
              pw.Center(child: pw.Text("SAPS Scale")),
              pw.Table(
                border: pw.TableBorder.all(
                    style: pw.BorderStyle.solid,
                    width: 2),
                children: [
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('SAPS SCALE 1'),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$sum_saps1'),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('SAPS SCALE 2'),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$sum_saps2'),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('SAPS SCALE 3'),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$sum_saps3'),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('SAPS SCALE 4'),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$sum_saps4'),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('SAPS SCALE TOTAL'),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$sum_sapstotal'),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),

                ],
              ),
            ]
        );
      }));
  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => doc.save());// Page
}



class custom extends StatefulWidget {
  custom({required this.title, required this.des});

  final String title;
  final String des;
  @override
  State<custom> createState() => _customState();
}

class _customState extends State<custom> {
  double slider = 0;
  double slider3 = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        shadowColor: Colors.grey,
        child: Container(
          width: 360,
          child: Column(
            children: [
              Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.title,
                          style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          widget.des,
                          style: TextStyle(fontFamily: 'NotoSerif', fontSize: 18),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Slider(
                          min: 0.0,
                          max: 5.0,
                          divisions: 5,
                          value: slider,
                          activeColor: Colors.redAccent,
                          label: slider.round().toString(),
                          onChanged: (newValue) {
                            setState(() {
                              slider = newValue;
                              sum_saps1 =sum_saps1 + slider - slider3;
                              slider3= slider;
                            });
                          }),
                      Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0: None',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1: Questionable',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2: Mild',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3: Moderate',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4:  Marked',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5: Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BPRS_scale_custom extends StatefulWidget {
  BPRS_scale_custom({required this.title, required this.des});

  final String title;
  final String des;

  @override
  State<BPRS_scale_custom> createState() => _BPRS_scale_customState();
}

class _BPRS_scale_customState extends State<BPRS_scale_custom> {
  double x = 0;
  double y = 0;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        shadowColor: Colors.grey,
        child: Container(
          width: 360,
          child: Column(
            children: [
              Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.title,
                          style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          widget.des,
                          style: TextStyle(fontFamily: 'NotoSerif', fontSize: 18),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Slider(
                          min: 0.0,
                          max: 7.0,
                          divisions: 7,
                          value: y,
                          activeColor: Colors.redAccent,
                          label: y.round().toString(),
                          onChanged: (newValue) {
                            setState(() {
                              y = newValue;
                              sum_bprs = sum_bprs + y - x;
                              x = y;
                            });
                          }),
                      Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0: Not Assesed',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1: Not Present',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2:  Very Mild',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3: Mild',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4: Moderate',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5: Moderately Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6: Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '7: Extremely Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $y',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MSA_scale_custom extends StatefulWidget {
  MSA_scale_custom(
      {required this.title,
        required this.des,
        required this.des1,
        required this.des2,
        required this.des3,
        required this.des4,
        required this.des5,
        required this.des6});

  final String title;
  final String des;
  final String des1;
  final String des2;
  final String des3;
  final String des4;
  final String des5;
  final String des6;
  @override
  State<MSA_scale_custom> createState() => _MSA_scale_customState();
}

class _MSA_scale_customState extends State<MSA_scale_custom> {
  double p = 0;
  double b = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        shadowColor: Colors.grey,
        child: Container(
          width: 360,
          child: Column(
            children: [
              Container(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'NotoSerif',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.des,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'NotoSerif',
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Slider(
                          min: 0.0,
                          max: 5.0,
                          divisions: 5,
                          value: b,
                          activeColor: Colors.redAccent,
                          label: b.round().toString(),
                          onChanged: (newValue) {
                            setState(() {
                              b = newValue;
                              sum_msa = sum_msa + b - p;
                              p = b;

                            });
                          }),
                      ListTile(
                        title: Text(
                          widget.des1,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des2,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des3,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des4,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des5,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des6,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Score = $b',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SAPS_scale_custom2 extends StatefulWidget {
  SAPS_scale_custom2({required this.title, required this.des});

  final String title;
  final String des;
  @override
  State<SAPS_scale_custom2> createState() => _SAPS_scale_custom2State();
}

class _SAPS_scale_custom2State extends State<SAPS_scale_custom2> {
  double slider = 0;
  double slider3 = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        shadowColor: Colors.grey,
        child: Container(
          width: 360,
          child: Column(
            children: [
              Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.title,
                          style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NotoSerif'),
                        ),

                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          widget.des,
                          style: TextStyle(fontFamily: 'NotoSerif', fontSize: 18),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Slider(
                          min: 0.0,
                          max: 5.0,
                          divisions: 5,
                          value: slider,
                          activeColor: Colors.redAccent,
                          label: slider.round().toString(),
                          onChanged: (newValue) {
                            setState(() {
                              slider = newValue;
                              sum_saps2 =sum_saps2 + slider - slider3;
                              slider3 = slider;
                            });
                          }),
                      Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0: None',
                                  style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1: Questionable',
                                  style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2: Mild',
                                  style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3: Moderate',
                                  style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4:  Marked',
                                  style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5: Severe',
                                  style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class custom6 extends StatefulWidget {
  custom6({required this.title, required this.des});

  final String title;
  final String des;
  @override
  State<custom6> createState() => _custom6State();
}

class _custom6State extends State<custom6> {
  double slider = 0;
  double slider3 = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        child: Material(
          color: Colors.white,
          elevation: 10,
          borderRadius: BorderRadius.circular(10),
          shadowColor: Colors.grey,
          child: Container(
            width: 360,
            child: Column(
              children: [
                Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            widget.title,
                            style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            widget.des,
                            style: TextStyle(fontFamily: 'Dosis', fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Slider(
                            min: 0.0,
                            max: 5.0,
                            divisions: 5,
                            value: slider,
                            activeColor: Colors.redAccent,
                            label: slider.round().toString(),
                            onChanged: (newValue) {
                              setState(() {
                                slider = newValue;
                                sum_saps3:
                                sum_saps3 + slider - slider3;
                                slider3:
                                slider;
                              });
                            }),
                        Container(
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    '0: None',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '1: Questionable',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '2: Mild',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '3: Moderate',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '4:  Marked',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '5: Severe',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Score = $slider',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                )
                              ],
                            ))
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SAPS_scale_custom3 extends StatefulWidget {
  SAPS_scale_custom3({required this.title, required this.des});

  final String title;
  final String des;
  @override
  State<SAPS_scale_custom3> createState() => _SAPS_scale_custom3State();
}

class _SAPS_scale_custom3State extends State<SAPS_scale_custom3> {
  double slider = 0;
  double slider3 = 0;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        shadowColor: Colors.grey,
        child: Container(
          width: 360,
          child: Column(
            children: [
              Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.title,
                          style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          widget.des,
                          style: TextStyle(fontFamily: 'NotoSerif', fontSize: 18,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Slider(
                          min: 0.0,
                          max: 5.0,
                          divisions: 5,
                          value: slider,
                          activeColor: Colors.redAccent,
                          label: slider.round().toString(),
                          onChanged: (newValue) {
                            setState(() {
                              slider = newValue;
                              sum_saps3 =sum_saps3 + slider - slider3;
                              slider3 = slider;
                            });
                          }),
                      Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0: None',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1: Questionable',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2: Mild',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3: Moderate',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4:  Marked',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5: Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ))
                    ],
                  )),

              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SAPS_scale_custom4 extends StatefulWidget {
  SAPS_scale_custom4({required this.title, required this.des});

  final String title;
  final String des;
  @override
  State<SAPS_scale_custom4> createState() => _SAPS_scale_custom4State();
}

class _SAPS_scale_custom4State extends State<SAPS_scale_custom4> {
  double slider = 0;
  double slider3 = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        shadowColor: Colors.grey,
        child: Container(
          width: 360,
          child: Column(
            children: [
              Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.title,
                          style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          widget.des,
                          style: TextStyle(fontFamily: 'NotoSerif', fontSize: 18),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Slider(
                          min: 0.0,
                          max: 5.0,
                          divisions: 5,
                          value: slider,
                          activeColor: Colors.redAccent,
                          label: slider.round().toString(),
                          onChanged: (newValue) {
                            setState(() {
                              slider = newValue;
                              sum_saps4 =sum_saps4 + slider - slider3;
                              slider3 =slider;
                            });
                          }),
                      Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0: None',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1: Questionable',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2: Mild',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3: Moderate',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4:  Marked',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5: Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

double aims_sum = 0;

class aims_class extends StatefulWidget {
  aims_class({required this.title, required this.des});

  final String title;
  final String des;

  @override
  State<aims_class> createState() => _aims_classState();
}

class _aims_classState extends State<aims_class> {
  double slider = 0;
  double slider3 = 0;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        shadowColor: Colors.grey,
        child: SizedBox(
          width: 360,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(widget.title,
                        style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      widget.des,
                      style: TextStyle(fontFamily: 'NotoSerif', fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Slider(
                      min: 0.0,
                      max: 4.0,
                      divisions: 4,
                      value: slider,
                      activeColor: Colors.redAccent,
                      label: slider.round().toString(),
                      onChanged: (newValue) {
                        setState(() {
                          slider = newValue;
                          aims_sum = aims_sum + slider - slider3;
                          slider3:
                          slider;
                        });
                      }),
                  Column(
                    children: [
                      ListTile(
                        title: Text(
                          '0: None',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '1: Minimal',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '2: Mild',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '3: Moderate',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '4:  Severe',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Text(
                        'Score = $slider',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Aims_page extends StatefulWidget {
  @override
  State<Aims_page> createState() => _Aims_pageState();
}

class _Aims_pageState extends State<Aims_page> {
  double x = 0;
  double y = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.redAccent,
        title: Text("AIMS Scale"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Facial and Oral Movements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              aims_class(
                  title: "Muscles of Facial Expression",
                  des:
                  "e.g. movements of forehead, eyebrows, periorbital area, cheeks, including frowning, blinking, smiling, grimacing"),
              SizedBox(
                height: 25,
              ),
              aims_class(
                  title: "Lips and Perioral Area",
                  des: "e.g. puckering,pouting,smacking"),
              SizedBox(
                height: 25,
              ),
              aims_class(
                  title: "Jaw",
                  des:
                  "e.g. biting, clenching, chewing, mouth opening, lateral movement"),
              SizedBox(
                height: 25,
              ),
              aims_class(
                  title: "Tongue",
                  des:
                  "Rate only increases in movement both in and out of mouth.NOT inability to sustain movement.  Darting in and out of mouth"),
              SizedBox(
                height: 25,
              ),
              Text(
                "Extremity Movements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              aims_class(
                  title: "Upper(arms,wrists,hands,fingers",
                  des:
                  "Include choreic movements (i.e., rapid, objectively purposeless, irregular, spontaneous) athetoid movements (i.e., slow, irregular,    complex, serpentine).  DO NOT INCLUDE TREMOR (i.e., repetitive, regular, rhythmic)"),
              SizedBox(
                height: 25,
              ),
              aims_class(
                  title: "Lower(legs,knees,ankle,toes)",
                  des:
                  "e.g., lateral knee movement, foot tapping, heel dropping, foot squirming, inversion and eversion of foot"),
              SizedBox(
                height: 25,
              ),
              Text(
                "Trunk Movements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              aims_class(
                  title: "Neck,shoulders,hips",
                  des:
                  "Neck, shoulders, hips e.g., rocking, twisting, squirming, pelvic  gyrations"),
              SizedBox(
                height: 25,
              ),
              Text(
                "Global Judgements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              aims_class(
                  title: "Severity of abnormal movements overall", des: " "),
              SizedBox(
                height: 25,
              ),
              aims_class(
                  title: "Incapacitation due to abnormal movements", des: " "),
              SizedBox(
                height: 25,
              ),
              Align(
                child: Material(
                  color: Colors.white,
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  shadowColor: Colors.grey,
                  child: SizedBox(
                    width: 360,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Pateint's awareness of abnormal movements",
                                style: TextStyle(
                                    fontSize: 25, fontFamily: 'NotoSerif'),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                "Rate only Pateint's report",
                                style: TextStyle(
                                    fontFamily: 'Dosis', fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Slider(
                                min: 0.0,
                                max: 4.0,
                                divisions: 4,
                                value: x,
                                activeColor: Colors.redAccent,
                                label: x.round().toString(),
                                onChanged: (newValue) {
                                  setState(() {
                                    x = newValue;
                                    aims_sum = aims_sum + x - y;
                                    y = x;
                                    aims_sum = aims_sum;
                                  });
                                }),
                            Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    '0: No Awareness',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '1: Aware,No distress',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '2: Aware,Mild distress',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '3: Aware,Moderate distress',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    '4:Aware, severe distress 4',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Score = $x',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Dental Status",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Total Score = $aims_sum",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.redAccent),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                    child: ListTile(
                      title: Text(
                        'Submit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
