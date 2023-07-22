//TODO: add your model class here

class SchoolInfo {
  final String schoolName;
  final String schoolAddress;
  final String numberOfStudents;
  final String numberOfTeachers;

  SchoolInfo({
    required this.schoolName,
    required this.schoolAddress,
    required this.numberOfStudents,
    required this.numberOfTeachers,
  });

  factory SchoolInfo.fromJson(Map<String, dynamic> json) {
    return SchoolInfo(
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

  SchoolInfo copyWith(
    String? schoolName,
    String? schoolAddress,
    String? numberOfStudents,
    String? numberOfTeachers,
  ) {
    return SchoolInfo(
      schoolName: schoolName ?? this.schoolName,
      schoolAddress: schoolAddress ?? this.schoolAddress,
      numberOfStudents: numberOfStudents ?? this.numberOfStudents,
      numberOfTeachers: numberOfTeachers ?? this.numberOfTeachers,
    );
  }
}
