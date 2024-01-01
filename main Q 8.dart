import 'dart:io';

void main() {
  // Function to calculate percentage and grade
  List<dynamic> calculatePercentageAndGrade(List<int> marks) {
    int totalMarks = marks.reduce((a, b) => a + b);
    double percentage = (totalMarks / (marks.length * 100)) * 100;
    double roundedPercentage = double.parse(percentage.toStringAsFixed(2));

    String grade = '';
    if (roundedPercentage >= 90) {
      grade = 'A';
    } else if (roundedPercentage >= 80) {
      grade = 'B';
    } else if (roundedPercentage >= 70) {
      grade = 'C';
    } else if (roundedPercentage >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    return [roundedPercentage, grade];
  }

  // Get user input
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter student roll number: ");
  String rollNumber = stdin.readLineSync()!;

  stdout.write("Enter class: ");
  String className = stdin.readLineSync()!;

  List<int> marks = [];
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks for subject $i: ");
    marks.add(int.parse(stdin.readLineSync()!));
  }

  // Calculate percentage and grade
  List<dynamic> result = calculatePercentageAndGrade(marks);
  double percentage = result[0];
  String grade = result[1];

  // Print marksheet
  print("\n===== Marksheet =====");
  print("Student Name: $name");
  print("Roll Number: $rollNumber");
  print("Class: $className");
  print("Subject-wise Marks:");
  for (int i = 0; i < 5; i++) {
    print("  Subject ${i + 1}: ${marks[i]}");
  }
  print("Percentage: $percentage%");
  print("Grade: $grade");
}
