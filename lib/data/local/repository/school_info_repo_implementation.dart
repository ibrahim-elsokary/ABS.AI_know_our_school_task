import 'dart:convert';
import 'dart:io';

import 'package:know_our_school/Model/model.dart';
import 'package:know_our_school/constant.dart';
import 'package:know_our_school/data/local/repository/school_info_repo.dart';

class SchoolInfoImple implements SchoolInfoRepo {
  @override
  Future<List<SchoolInfo>> getSchoolInfoList() async {
    var jsonString = await File(AppConstant.jsonPath).readAsString();
    List<dynamic> data = jsonDecode(jsonString);
    List<SchoolInfo> schoolInfolsit = [];
    for (var element in data) {
      schoolInfolsit.add(SchoolInfo.fromJson(element));
    }
    return schoolInfolsit;
  }
}
