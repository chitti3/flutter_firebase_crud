import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.cyan
    ),
    home: MyApp(),
  ));
}



class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String StudentName,StudentId,studyProgramId;
  double studentGpa;

  getStudentName(name){
    this.StudentName=name;
  }

  getStudentId(Id){
    this.StudentId=Id;
  }

  getStudyProgramId(studyid){
    this.studyProgramId=studyid;
  }

  getStudyGpa(gpa){
    this.studentGpa=double.parse(gpa);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FireBase Crud Operation"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0 ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,width: 2.0)
                )
              ),
              onChanged: (String name){

              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0 ),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Student Id",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2.0)
                  )
              ),
              onChanged: (String name){
                   getStudentName(name);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0 ),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Student Id",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2.0)
                  )
              ),
              onChanged: (String name){
               getStudentId(name);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0 ),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Study Program Id",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2.0)
                  )
              ),
              onChanged: (String name){
                  getStudyProgramId(name);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0 ),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "GPA",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2.0)
                  )
              ),
              onChanged: (String name){
                 getStudyGpa(name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
