import 'package:flutter/material.dart';

// Student class (OOP Concept)
class Student {
  String name;
  int age;
  String department;

  Student(this.name, this.age, this.department);

  String get info => "$name, Age: $age, Dept: $department";
}

class StudentListScreen extends StatefulWidget {
  @override
  _StudentListScreenState createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  List<Student> students = [
    Student("Ali", 20, "Computer Science"),
    Student("Sara", 21, "Information Tech"),
    Student("Bilal", 19, "Software Engg"),
    Student("Ahmed", 22, "Cyber Security"),
    Student("Zeeshan", 20, "Data Science"),
    Student("Subhan", 23, "Game Developer"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Students"), centerTitle: true),
      body: SafeArea(
        child: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 600),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Image.asset('assets/student.png', height: 50),
                  SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      students[index].info,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
