import 'package:flutter/material.dart';
import 'all_scale_page.dart';


double Sum_esrs_scale1 = 0;
double Sum_esrs_scale2 = 0;
double Sum_esrs_scale3 = 0;
double Sum_esrs_scale4 = 0;
double Sum_esrs_scale5 = 0;
double Sum_esrs_scale6 = 0;
double Sum_esrs_scale7 = 0;
double Sum_esrs_scale8 = 0;
double sum_esrs = 0.0;

class Esrs_scale8 extends StatefulWidget {
  // Esrs_scale8({Key? key}) : super(key: key);

  @override
  State<Esrs_scale8> createState() => _Esrs_scale8State();
}

class _Esrs_scale8State extends State<Esrs_scale8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CLINICAL GLOBAL IMPRESSION OF SEVERITY OF AKATHISIA'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [

            SizedBox(
              height: 20,
            ),
            Container(
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
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Considering your clinical experience how severe is the Akathisia at this time ',
                              style: TextStyle( fontSize: 20,
                                  fontFamily: 'NotoSerif',
                                  fontWeight: FontWeight.bold),
                            ),

                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Slider(
                              min: 0.0,
                              max: 8.0,
                              divisions: 8,
                              value: Sum_esrs_scale8,
                              activeColor: Colors.red,
                              label: Sum_esrs_scale8.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  Sum_esrs_scale8 = newValue;
                                  sum_esrs = Sum_esrs_scale1 +
                                      Sum_esrs_scale2 +
                                      Sum_esrs_scale3 +
                                      Sum_esrs_scale4 +
                                      Sum_esrs_scale5 +
                                      Sum_esrs_scale6 +
                                      Sum_esrs_scale7 +
                                      Sum_esrs_scale8;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Absent',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1 = Borderline',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 =  Very Mild',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = Mild',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 = Moderate',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 = Moderately Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 = Marked',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '7 = Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '7 = Moderately Severe',
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
                                'Score = $Sum_esrs_scale8',
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
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Total Score =$sum_esrs",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red),
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
                        style: ElevatedButton.styleFrom(primary: Colors.red),
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
                                  builder: (context) => all_scale_page()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Submit", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class scale extends StatefulWidget {
  // scale({Key? key}) : super(key: key);

  @override
  State<scale> createState() => _scaleState();
}

class _scaleState extends State<scale> {
  double slider6Value = 0.0;
  double slider7Value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QUESTIONNAIRE'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Parkinsonism, Akathisia, Dystonia and Dyskinesia. In this questionnaire, take into account the verbal report of the patient on the following:",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    ListTile(
                        title: Text(
                          "The duration of the symptom during the day",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.justify,
                        )),
                    ListTile(
                        title: Text(
                            "The number of days where the symptom was present duringthe last week;",
                            style: TextStyle(fontSize: 20))),
                    ListTile(
                        title: Text(
                            "The evaluation of the intensity of the symptom by the patient.",
                            style: TextStyle(fontSize: 20))),
                    ListTile(
                        title: Text(
                            "Enquire into the status of each symptom and rate accordingly",
                            style: TextStyle(fontSize: 20))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(
                title:
                "Impression of slowness or weakness ,difficulty in carrying out routine tasks"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(title: "Difficulty walking or with balance"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(title: "Stiffness,stiff posture"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(title: "Restless,Nervous,unable to keep still"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(title: "Tremors,Shaking"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(
                title: "Oculogyric crisis,Abnormal sustained posture"),
            SizedBox(
              height: 20,
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
                      Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Abnormal involuntary movements(dyskensia)of tongue,jaw,lips,face,extremities or trunk',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'NotoSerif'),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Slider(
                                  min: 0.0,
                                  max: 3.0,
                                  divisions: 3,
                                  value: slider7Value,
                                  activeColor: Colors.red,
                                  label: slider7Value.round().toString(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      slider7Value = newValue;
                                      Sum_esrs_scale1 = Sum_esrs_scale1 +
                                          slider7Value -
                                          slider6Value;
                                      slider6Value = slider7Value;
                                    });
                                  }),
                              Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      '0 = Absent',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      ' 1 = Mild ',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      '2 = Moderate ',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      '3 = SEVERE',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Score = $slider7Value',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Total Score =$Sum_esrs_scale1 ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Esrs_scale2()));
              }),
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Text("Next"),
            ),
          ]),
        ));
  }
}

class Esrs_scale2 extends StatefulWidget {
  // Esrs_scale2({Key? key});

  @override
  State<Esrs_scale2> createState() => _Esrs_scale2State();
}

class _Esrs_scale2State extends State<Esrs_scale2> {
  double slider1Value = 0.0;
  double slider2Value = 0.0;
  double slider3Value = 0.0;
  double slider4Value = 0.0;
  double slider5Value = 0.0;
  double slider6Value = 0.0;
  double slider7Value = 0.0;
  double slider8Value = 0.0;
  double slider9Value = 0.0;
  double slider10Value = 0.0;
  double slider11Value = 0.0;
  double slider12Value = 0.0;
  double slider13Value = 0.0;
  double slider14Value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EXAMINATION: PARKINSONISM AND AKATHISIA'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Items based on physical examination for parkinsons',
                  style: TextStyle(fontSize: 20, fontFamily: 'NotoSerif'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'TREMOR',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Slider(
                              min: 0.0,
                              max: 4.0,
                              divisions: 4,
                              value: slider1Value,
                              activeColor: Colors.red,
                              label: slider1Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider1Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider1Value -
                                      slider2Value;
                                  slider2Value = slider1Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = None',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                  title: Text(
                                    " 1 = Borderline",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              ListTile(
                                  title: Text(
                                    '2 = Small Ampliitude',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              ListTile(
                                  title: Text(
                                    '3 = Moderate Amplitude',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              ListTile(
                                  title: Text(
                                    '4 =  Large Amplitude',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Text('Score = $slider1Value',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
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
              height: 20,
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Bradykinesia',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 6,
                              value: slider3Value,
                              activeColor: Colors.red,
                              label: slider3Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider3Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider3Value -
                                      slider4Value;
                                  slider4Value = slider3Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Normal',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  ' 1 = Global impression of slowness',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Definite slowness',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = Very Mild Difficulty',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Mild Difficulty',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 =  Difficulty in starting or dtopping',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 =  Rare voluntary movement',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider3Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Gait & Posture',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 6,
                              value: slider5Value,
                              activeColor: Colors.red,
                              label: slider5Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider5Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider5Value -
                                      slider6Value;
                                  slider6Value = slider5Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Normal',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  ' 1 = Mild decrease',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Moderate decrease',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = No movement',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Stiff posture',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 =  More marked fascination',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 =  Triple flexion',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider5Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              child: Material(
                color: Colors.white,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                shadowColor: Colors.grey,
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Postural Stability',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 3,
                              value: slider7Value,
                              activeColor: Colors.red,
                              label: slider7Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider7Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider7Value -
                                      slider8Value;
                                  slider8Value = slider7Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Normal',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1 = Hesitation when pushed',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Retropulsion',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = Exagerrated',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Absence of postural response',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 =  Unstable while standing',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 =  Unable to stand withou assistance',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider7Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Rigidity',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 6,
                              value: slider9Value,
                              activeColor: Colors.red,
                              label: slider9Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider9Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider9Value -
                                      slider10Value;
                                  slider10Value = slider9Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Normal',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1 = Very mild',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Mild',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = Moderate',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Moderately severe',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 =  Severe',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 = Extremely severe',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider9Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Items based on overall  observation during examination for Parkinsons',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
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
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Expressive Automatic Movements',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'NotoSerif'),
                                ),
                              ),
                              Slider(
                                  min: 0.0,
                                  max: 6.0,
                                  divisions: 6,
                                  value: slider11Value,
                                  activeColor: Colors.red,
                                  label: slider11Value.round().toString(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      slider11Value = newValue;
                                      Sum_esrs_scale2 = Sum_esrs_scale2 +
                                          slider11Value -
                                          slider12Value;
                                      slider12Value = slider11Value;
                                    });
                                  }),
                              Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          '0 = Normal',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          ' 1 = Very mild',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '2 = Mild',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '3 = Moderate',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '4 = Moderately severe',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '5 = Severe',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '6 = Extremely severe',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Score = $slider11Value',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 20),
                                      )
                                    ],
                                  ))
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Akathisia',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 6,
                              value: slider13Value,
                              activeColor: Colors.red,
                              label: slider13Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider13Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider13Value -
                                      slider14Value;
                                  slider14Value = slider13Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Absent',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1 = Looks restless',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Needs to move',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = Often needs to move one extremity',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Moves one extremity constantly',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 = Unable to sit down',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 = Moves constantly',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Score = $slider13Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Score =$Sum_esrs_scale2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                        style: ElevatedButton.styleFrom(primary: Colors.red),
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
                                  builder: (context) => Esrs_scale3()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale3 extends StatefulWidget {
  // Esrs_scale3({Key? key}) : super(key: key);

  @override
  State<Esrs_scale3> createState() => _Esrs_scale3State();
}

class _Esrs_scale3State extends State<Esrs_scale3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EXAMINATION:DYSTONIA'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Based on examination and observation',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Acute Torsion',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'NotoSerif'),
                                  ),
                                ),
                                Slider(
                                    min: 0.0,
                                    max: 6.0,
                                    divisions: 6,
                                    value: Sum_esrs_scale3,
                                    activeColor: Colors.red,
                                    label: Sum_esrs_scale3.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        Sum_esrs_scale3 = newValue;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = Absent',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text('1 = Very mild'),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 = Mild',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Moderate',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = Moderately severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '5 = Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '6 = Extremely Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $Sum_esrs_scale3',
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
            SizedBox(
              height: 20,
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
                        style: ElevatedButton.styleFrom(primary: Colors.red),
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
                                  builder: (context) => Esrs_scale4()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale4 extends StatefulWidget {
  // Esrs_scale4({Key? key}) : super(key: key);

  @override
  State<Esrs_scale4> createState() => _Esrs_scale4State();
}

class _Esrs_scale4State extends State<Esrs_scale4> {
  double slider1Value = 0.0;
  double slider2Value = 0.0;
  double slider3Value = 0.0;
  double slider4Value = 0.0;
  double slider5Value = 0.0;
  double slider6Value = 0.0;
  double slider7Value = 0.0;
  double slider11Value = 0.0;
  double slider22Value = 0.0;
  double slider33Value = 0.0;
  double slider44Value = 0.0;
  double slider55Value = 0.0;
  double slider66Value = 0.0;
  double slider77Value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EXAMINATION: DYSKINETIC MOVEMENT'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Based on examinations and obseervations',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'LINGUAL MOVEMENT',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'NotoSerif'),
                                  ),
                                ),
                                Slider(
                                    min: 0.0,
                                    max: 4.0,
                                    divisions: 4,
                                    value: slider1Value,
                                    activeColor: Colors.red,
                                    label: slider1Value.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        slider1Value = newValue;
                                        Sum_esrs_scale4 = Sum_esrs_scale4 +
                                            slider1Value -
                                            slider11Value;
                                        slider11Value = slider1Value;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = None',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            ' 1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 = Clearly present',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Occational partial protrution',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = with complete protrution',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $slider1Value',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Jaw Movements',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'NotoSerif'),
                                  ),
                                ),
                                Slider(
                                    min: 0.0,
                                    max: 4.0,
                                    divisions: 4,
                                    value: slider2Value,
                                    activeColor: Colors.red,
                                    label: slider2Value.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        slider2Value = newValue;
                                        Sum_esrs_scale4 = Sum_esrs_scale4 +
                                            slider2Value -
                                            slider22Value;
                                        slider22Value = slider2Value;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = None',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            ' 1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 = Clearly present',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Occational partial protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = With complete protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $slider2Value',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Bucco Labial Movements',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'NotoSerif'),
                                  ),
                                ),
                                Slider(
                                    min: 0.0,
                                    max: 4.0,
                                    divisions: 4,
                                    value: slider3Value,
                                    activeColor: Colors.red,
                                    label: slider3Value.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        slider3Value = newValue;
                                        Sum_esrs_scale4 = Sum_esrs_scale4 +
                                            slider3Value -
                                            slider33Value;
                                        slider33Value = slider3Value;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = None',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            ' 1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 = Clearly present',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Occasional partial protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = With complete protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $slider3Value',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Truncal Movements',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'NotoSerif'),
                                  ),
                                ),
                                Slider(
                                    min: 0.0,
                                    max: 4.0,
                                    divisions: 4,
                                    value: slider4Value,
                                    activeColor: Colors.red,
                                    label: slider4Value.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        slider4Value = newValue;
                                        Sum_esrs_scale4 = Sum_esrs_scale4 +
                                            slider4Value -
                                            slider44Value;
                                        slider44Value = slider4Value;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text('0 = None'),
                                        ),
                                        ListTile(
                                          title: Text(' 1 = Borderline'),
                                        ),
                                        ListTile(
                                          title: Text('2 = Clearly present'),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Occasional partial protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = With complete protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $slider4Value',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Lower Extremities ',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'NotoSerif'),
                                  ),
                                ),
                                Slider(
                                    min: 0.0,
                                    max: 4.0,
                                    divisions: 4,
                                    value: slider6Value,
                                    activeColor: Colors.red,
                                    label: slider6Value.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        slider6Value = newValue;
                                        Sum_esrs_scale4 = Sum_esrs_scale4 +
                                            slider6Value -
                                            slider66Value;
                                        slider66Value = slider6Value;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = None',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            ' 1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 = Clearly present',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Occasional partial protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = With complete protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $slider6Value',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'UPPER EXTREMITIES ',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'NotoSerif'),
                                  ),
                                ),
                                Slider(
                                    min: 0.0,
                                    max: 4.0,
                                    divisions: 4,
                                    value: slider5Value,
                                    activeColor: Colors.red,
                                    label: slider5Value.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        slider5Value = newValue;
                                        Sum_esrs_scale4 = Sum_esrs_scale4 +
                                            slider5Value -
                                            slider55Value;
                                        slider55Value = slider5Value;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = None',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            ' 1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 = Clearly present',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Occasional partial protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = With complete protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $slider5Value',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'OTHER MOVEMENTS',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'NotoSerif'),
                                  ),
                                ),
                                Slider(
                                    min: 0.0,
                                    max: 4.0,
                                    divisions: 4,
                                    value: slider7Value,
                                    activeColor: Colors.red,
                                    label: slider7Value.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        slider7Value = newValue;
                                        Sum_esrs_scale4 = Sum_esrs_scale4 +
                                            slider7Value -
                                            slider77Value;
                                        slider77Value = slider7Value;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = None',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            ' 1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 = Clearly present',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Occasional partial protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = With complete protrusion',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $slider6Value',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Total Score = $Sum_esrs_scale4",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red),
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
                        style: ElevatedButton.styleFrom(primary: Colors.red),
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
                                  builder: (context) => Esrs_scale5()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale5 extends StatefulWidget {
  // Esrs_scale5({Key? key}) : super(key: key);

  @override
  State<Esrs_scale5> createState() => _Esrs_scale5State();
}

class _Esrs_scale5State extends State<Esrs_scale5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CLINICAL GLOBAL IMPRESSION OF SEVERITY OF DYSKINESIA'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Considering your clinical experience how severe is the Dyskinsia at this time ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
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
                                Slider(
                                    min: 0.0,
                                    max: 8.0,
                                    divisions: 8,
                                    value: Sum_esrs_scale5,
                                    activeColor: Colors.red,
                                    label: Sum_esrs_scale5.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        Sum_esrs_scale5 = newValue;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = Absent',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 =  Very Mild',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Mild',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = Moderate',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '5 = Moderately Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '6 = Marked',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '7 = Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '7 = Moderately Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $Sum_esrs_scale5',
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
            SizedBox(
              height: 20,
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
                        style: ElevatedButton.styleFrom(primary: Colors.red),
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
                                  builder: (context) => Esrs_scale6()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale6 extends StatefulWidget {
  // Esrs_scale6({Key? key}) : super(key: key);

  @override
  State<Esrs_scale6> createState() => _Esrs_scale6State();
}

class _Esrs_scale6State extends State<Esrs_scale6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CLINICAL GLOBAL IMPRESSION OF SEVERITY OF PARKINSON'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Considering your clinical experience how severe is the Parkinsons at this time ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
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
                                Slider(
                                    min: 0.0,
                                    max: 8.0,
                                    divisions: 8,
                                    value: Sum_esrs_scale6,
                                    activeColor: Colors.red,
                                    label: Sum_esrs_scale6.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        Sum_esrs_scale6 = newValue;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = Absent',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 =  Very Mild',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Mild',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = Moderate',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '5 = Moderately Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '6 = Marked',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '7 = Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '7 = Moderately Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $Sum_esrs_scale6',
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
            SizedBox(
              height: 20,
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
                        style: ElevatedButton.styleFrom(primary: Colors.red),
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
                                  builder: (context) => Esrs_scale7()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale7 extends StatefulWidget {
  // Esrs_scale7({Key? key}) : super(key: key);

  @override
  State<Esrs_scale7> createState() => _Esrs_scale7State();
}

class _Esrs_scale7State extends State<Esrs_scale7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CLINICAL GLOBAL IMPRESSION OF SEVERITY OF DYTONIA'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Considering your clinical experience how severe is the Dystonia at this time ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
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
                                Slider(
                                    min: 0.0,
                                    max: 8.0,
                                    divisions: 8,
                                    value: Sum_esrs_scale7,
                                    activeColor: Colors.red,
                                    label: Sum_esrs_scale7.round().toString(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        Sum_esrs_scale7 = newValue;
                                      });
                                    }),
                                Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            '0 = Absent',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '1 = Borderline',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '2 =  Very Mild',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '3 = Mild',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '4 = Moderate',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '5 = Moderately Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '6 = Marked',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '7 = Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            '7 = Moderately Severe',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Score = $Sum_esrs_scale7',
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
                        style: ElevatedButton.styleFrom(primary: Colors.red),
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
                                  builder: (context) => Esrs_scale8()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale1_custom extends StatefulWidget {
  Esrs_scale1_custom({required this.title});
  final String title;

  @override
  State<Esrs_scale1_custom> createState() => _Esrs_scale1_customState();
}

class _Esrs_scale1_customState extends State<Esrs_scale1_custom> {
  double y = 0;
  double x = 0;
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
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        widget.title,
                        style: TextStyle(fontSize: 18, fontFamily: 'NotoSerif'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Slider(
                      min: 0.0,
                      max: 3.0,
                      divisions: 3,
                      value: y,
                      activeColor: Colors.red,
                      label: y.round().toString(),
                      onChanged: (newValue) {
                        setState(() {
                          y = newValue;
                          Sum_esrs_scale1 = Sum_esrs_scale1 + y - x;
                          x = y;
                        });
                      }),
                  Column(
                    children: [
                      ListTile(
                        title: Text(
                          '0 = Absent',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '1 = Mild ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '2 = Moderate ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '3 = SEVERE',
                          style: TextStyle(color: Colors.grey),
                        ),
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
