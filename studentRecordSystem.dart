import 'dart:io';

main() {
  print('Enter number of new students to enroll : ');
  int collegeSt = int.parse(stdin.readLineSync()!);
  List<CollegeStudent> students = [];
  for (int i = 0; i < collegeSt; i++) {
    final student = CollegeStudent();
    student.StudentName();
    student.StudentLevel();
    student.enrollCourses();
    student.payTuition();
    student.showInfo();
    students.add(student);
  }

  //Software Engineering Program

  print('Enter number of new software engineering students to enroll : ');
  int SweSt = int.parse(stdin.readLineSync()!);
  List<SoftwareEngineeringStudent> sweStudents = [];
  for (int i = 0; i < SweSt; i++) {
    final SoftwareEngineeringStudent SWE_Student = SoftwareEngineeringStudent();
    SWE_Student.StudentName();
    SWE_Student.StudentLevel();
    SWE_Student.enrollCourses();
    SWE_Student.payTuition();
    SWE_Student.showInfo();
    sweStudents.add(SWE_Student);
  }

  //Medical Engineering Program

  print('Enter number of new medical engineering students to enroll : ');
  int MedEngSt = int.parse(stdin.readLineSync()!);
  List<MedicalEngineeringStudent> medicalEngineeringStudents = [];
  for (int i = 0; i < MedEngSt; i++) {
    final medicalEngineeringStudent = MedicalEngineeringStudent();
    medicalEngineeringStudent.StudentName();
    medicalEngineeringStudent.StudentLevel();
    medicalEngineeringStudent.enrollCourses();
    medicalEngineeringStudent.payTuition();
    medicalEngineeringStudent.showInfo();
    medicalEngineeringStudents.add(medicalEngineeringStudent);
  }

//Artificial Intelligence Program

  print('Enter number of new artificial intelligence students to enroll : ');
  int AiSt = int.parse(stdin.readLineSync()!);
  List<ArtificialIntelligenceStudent> artificial_Students = [];
  for (int i = 0; i < AiSt; i++) {
    final AiStudent = ArtificialIntelligenceStudent();
    AiStudent.StudentName();
    AiStudent.StudentLevel();
    AiStudent.enrollCourses();
    AiStudent.payTuition();
    AiStudent.showInfo();
    artificial_Students.add(AiStudent);
  }

//Doctors
  print('Enter number of new doctors to enroll : ');
  int numOfDoctors = int.parse(stdin.readLineSync()!);
  List<Doctors> doctors = [];
  for (int i = 0; i < numOfDoctors; i++) {
    final Doctor = Doctors();
    Doctor.DoctorName();
    Doctor.DoctorAge();
    Doctor.DoctorCourses();
    Doctor.DoctorDepartment();
    doctors.add(Doctor);
    Doctor.showInfo();
  }

  //Employees

  var em = Employees("Ali Mohammed", 40);
  em.studentsAttendance();
  em.doctorsAttendance();
  em.paySalaries();
}

class CollegeStudent {
  late String firstName;
  late String lastName;
  late String gradeYear;
  late int studentID;
  late String courses;
  int tuitionBalance = 0;
  static int costOfCourse = 400;
  static int id = 10000;

  String? StudentName() {
    print('Enter student first name : ');
    this.firstName = stdin.readLineSync()!;
    print('Enter student last name : ');
    this.lastName = stdin.readLineSync()!;
  }

  String? StudentLevel() {
    print('Enter student grade level : ');
    this.gradeYear = stdin.readLineSync()!;
    setStudentID();
  }

  //Generate an ID
  setStudentID() {
    //Grade level + ID
    this.studentID = int.parse(gradeYear) + id;
    id++;
  }

  void enrollCourses() {
    do {
      print('Enter course to enroll (q to quit)');
      String course = stdin.readLineSync()!;
      if (course != 'q') {
        this.courses = course;
        List Courses = [];
        for (int n = 0; n < Courses.length; n++) {
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

  void payTuition() {
    viewBalance();
    print('Enter your payment : ');
    int payment = int.parse(stdin.readLineSync()!);
    tuitionBalance = tuitionBalance - payment;
    print('Thank you for your payment of ${payment}');
    viewBalance();
  }

  void showInfo() {
    print(""" Name : ${firstName + " " + lastName},
        Courses Enrolled : ${courses} ,
        Grade level : ${gradeYear} ,
        Student ID : ${studentID} ,
        Balance : ${tuitionBalance} """);
  }
}

class SoftwareEngineeringStudent extends CollegeStudent {}

class MedicalEngineeringStudent extends CollegeStudent {}

class ArtificialIntelligenceStudent extends CollegeStudent {}

class Doctors {
  late String name;
  late int age;
  late String department;
  late String courses;
  static double salary = 6000;

  String? DoctorName() {
    print("Enter doctor's name : ");
    this.name = stdin.readLineSync()!;
  }

  int? DoctorAge() {
    print("Enter doctor's age : ");
    this.age = int.parse(stdin.readLineSync()!);
  }

  String? DoctorDepartment() {
    print("Enter doctor's department : ");
    this.department = stdin.readLineSync()!;
  }

  String? DoctorCourses() {
    print("Enter doctor's courses : ");
    this.courses = stdin.readLineSync()!;
  }

  void showInfo() {
    print(""" Name : $name ,
        Age : $age ,
        Department : $department ,
        Courses : $courses ,
        Salary : $salary """);
  }
}

class Employees {
  Employees(this.name, this.age) {
    this.name = name;
    this.age = age;
  }

  late String name;
  late int age;

  void studentsAttendance() {
    print("Enter the number of students who attend : ");
    int numOfStudentsAttendance = int.parse(stdin.readLineSync()!);
    print("Enter the number of students who did not attend : ");
    int numOfStudentsAbsence = int.parse(stdin.readLineSync()!);
    print("Enter the name of students who did not attend : ");
    String? studentAbsence = stdin.readLineSync();
    print("""Number of students who attend : $numOfStudentsAttendance ,
        Number of students who didn't attend : $numOfStudentsAbsence , 
        and their names : 
        $studentAbsence """);
  }

  void doctorsAttendance() {
    print("Enter the number of doctors who attend : ");
    int numOfDoctorsAttendance = int.parse(stdin.readLineSync()!);
    print("Enter the number of doctors who didn't attend : ");
    int numOfDoctorsAbsence = int.parse(stdin.readLineSync()!);
    print("Enter the number of doctors who did not attend : ");
    String? doctorAbsence = stdin.readLineSync();
    print("""Number of doctors who attend : $numOfDoctorsAttendance,
        Number of doctors who didn't attend : $numOfDoctorsAbsence , 
        and their names : $doctorAbsence """);
  }

  void paySalaries() {
    print("Are you doctor or employee : ");
    String? personName = stdin.readLineSync();
    if (personName == "doctor") {
      print("Enter the name of the doctor : ");
      String? doctorName = stdin.readLineSync();
      print("Enter the salary of the doctor : ");
      int doctorSalary = int.parse(stdin.readLineSync()!);
      print("Name : ${doctorName}, Salary : ${doctorSalary}");
    } else if (personName == "employee") {
      print("Enter the name of the employee : ");
      String? employeeName = stdin.readLineSync();
      print("Enter the salary of the employee : ");
      int employeeSalary = int.parse(stdin.readLineSync()!);
      print("Name : ${employeeName}, Salary : ${employeeSalary}");
    } else {
      print("Wrong position");
    }
  }
}
