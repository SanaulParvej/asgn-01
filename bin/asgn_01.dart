abstract class Role {
  void displayRole();
}

class Person implements Role {
  final String name;
  final int age;
  final String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print("Role: Undefined");
  }
}

class Student extends Person {
  final String studentID;
  final String grade;
  final List<double> courseScores;

  Student(
      String name,
      int age,
      String address,
      this.studentID,
      this.grade,
      this.courseScores,
      ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}

class Teacher extends Person {
  final String teacherID;
  final List<String> coursesTaught;

  Teacher(
      String name,
      int age,
      String address,
      this.teacherID,
      this.coursesTaught,
      ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

void main() {
  Student student = Student(
    "Sanaul Parvej",
    24,
    "Dhaka",
    "S123",
    "Grade 10",
    [90, 85, 82],
  );

  Teacher teacher = Teacher(
    "Taufiqur Rahman",
    35,
    "Dhaka",
    "T456",
    ["Math", "English", "Bangla"],
  );

  print("Student Information:");
  student.displayRole();
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Address: ${student.address}");
  print("Average Score: ${student.calculateAverageScore()}\n");


  print("Teacher Information:");
  teacher.displayRole();
  print("Name: ${teacher.name}");
  print("Age: ${teacher.age}");
  print("Address: ${teacher.address}");
  teacher.displayCoursesTaught();
}
