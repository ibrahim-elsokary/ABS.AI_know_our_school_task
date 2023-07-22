//TODO: add your model class here

class SchoolInfoModel {
  final String schoolName;
  final String schoolAddress;
  final String numberOfStudents;
  final String numberOfTeachers;

  SchoolInfoModel({
    required this.schoolName,
    required this.schoolAddress,
    required this.numberOfStudents,
    required this.numberOfTeachers,
  });

  factory SchoolInfoModel.fromJson(Map<String, dynamic> json) {
    return SchoolInfoModel(
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

  SchoolInfoModel copyWith(
    String? schoolName,
    String? schoolAddress,
    String? numberOfStudents,
    String? numberOfTeachers,
  ) {
    return SchoolInfoModel(
      schoolName: schoolName ?? this.schoolName,
      schoolAddress: schoolAddress ?? this.schoolAddress,
      numberOfStudents: numberOfStudents ?? this.numberOfStudents,
      numberOfTeachers: numberOfTeachers ?? this.numberOfTeachers,
    );
  }
}
