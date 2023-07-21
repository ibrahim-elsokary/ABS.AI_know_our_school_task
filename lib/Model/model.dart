//TODO: add your model class here

class StudentInfo {
  final String schoolName;
  final String schoolAddress;
  final String numberOfStudents;
  final String numberOfTeachers;

  StudentInfo({
    required this.schoolName,
    required this.schoolAddress,
    required this.numberOfStudents,
    required this.numberOfTeachers,
  });

  factory StudentInfo.fromJson(Map<String, dynamic> json) {
    return StudentInfo(
      schoolName: json["School Name"],
      schoolAddress: json["School Address"],
      numberOfStudents: json["Number of Students"],
      numberOfTeachers: json["Number of Teachers"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "School Name": schoolName,
      "School Address": schoolAddress,
      "Number of Students": numberOfStudents,
      "Number of Teachers": numberOfTeachers,
    };
  }

  StudentInfo copyWith(
    String? schoolName,
    String? schoolAddress,
    String? numberOfStudents,
    String? numberOfTeachers,
  ) {
    return StudentInfo(
      schoolName: schoolName ?? this.schoolName,
      schoolAddress: schoolAddress ?? this.schoolAddress,
      numberOfStudents: numberOfStudents ?? this.numberOfStudents,
      numberOfTeachers: numberOfTeachers ?? this.numberOfTeachers,
    );
  }
}
