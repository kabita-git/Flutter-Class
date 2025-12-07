import 'dart:io';

// Task 1
class Student {
  String sname;
  int mathMark;
  int scienceMark;
  int englishMark;

  Student(this.sname, this.mathMark, this.scienceMark, this.englishMark);

  // Total
  int getTotal() {
    return mathMark + scienceMark + englishMark;
  }

  // Average
  double calculateAverage() {
    return getTotal() / 3;
  }

  // Grade according to requirement
  String getGrade() {
    double avg = calculateAverage();

    if (avg >= 80) {
      return "A";
    } else if (avg >= 60) {
      return "B";
    } else if (avg >= 40) {
      return "C";
    } else {
      return "F";
    }
  }
}

void main() {
  // Taking input from user
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Math marks: ");
  int math = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Science marks: ");
  int science = int.parse(stdin.readLineSync()!);

  stdout.write("Enter English marks: ");
  int english = int.parse(stdin.readLineSync()!);

  // Creating student object
  Student s = Student(name, math, science, english);

  // Output
  print("Name: ${s.sname}");
  print("Marks: ${s.mathMark}, ${s.scienceMark}, ${s.englishMark}");
  print("Total: ${s.getTotal()}");
  print("Average: ${s.calculateAverage().toStringAsFixed(2)}");
  print("Grade: ${s.getGrade()}");
}
