import 'dart:io';
main() {
  print('Enter number of new students to enroll : ');
  int s= int.parse(stdin.readLineSync()!);
  List<Student> students = [];
  for (int i = 0; i < s; i++) {
    final student = CollegeStudent();
    student.enrollCourses();
    student.payTuition();
    students.add(student);
  }
  print(students);
}
abstract class Student{
  void enrollCourses() {}
  void payTuition() {}
}

class CollegeStudent extends Student {
  late String firstName;
  late String lastName;
  late int gradeYear;
  late int studentID;
  late String courses;
  int tuitionBalance = 0;
  static int costOfCourse = 400;
  static int id = 10000;
  //Constructor prompt user to enter student's name and year
  CollegeStudent() {
    print('Enter student first name : ');
    this.firstName = stdin.readLineSync()!;
    print('Enter student last name : ');
    this.lastName = stdin.readLineSync()!;
    print('Enter student grade level : ');
    this.gradeYear = int.parse(stdin.readLineSync()!);
    setStudentID();
  }
  //Generate an ID
  setStudentID() {
    //Grade level + ID
    this.studentID = gradeYear + id;
    id++;
  }
  //Enroll in courses
  @override
  enrollCourses() {
    do {
      print('Enter course to enroll (q to quit)');
      String course = stdin.readLineSync()!;
      if (course != 'q') {
        this.courses = course;
        List Courses = [];
        for(int n = 0; n < Courses.length; n++){
          print(Courses);
        }
          tuitionBalance = tuitionBalance + costOfCourse;
      } else {
        print('Break');
        break;
      }
    } while (1 != 0);
  }
  //View balance
  void viewBalance() {
    print('Your balance is : ${tuitionBalance}');
  }
  //Pay Tuition
  @override
  payTuition() {
    viewBalance();
    print('Enter your payment : ');
    int payment = int.parse(stdin.readLineSync()!);
    tuitionBalance = tuitionBalance - payment;
    print('Thank you for your payment of ${payment}');
    viewBalance();
  }
  String showInfo() {
    return """ Name : ${firstName + " " + lastName}
        Courses Enrolled : ${courses}
        Grade level : ${gradeYear}
        Student ID : ${studentID}
        Balance : ${tuitionBalance} """;
  }
}