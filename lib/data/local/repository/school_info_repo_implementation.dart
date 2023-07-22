import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:know_our_school/Model/model.dart';
import 'package:know_our_school/constant.dart';
import 'package:know_our_school/data/local/repository/school_info_repo.dart';

class SchoolInfoImple implements SchoolInfoRepo {
  @override
  Future<List<SchoolInfoModel>> getSchoolInfoList() async {
    try {
      var jsonString = await rootBundle.loadString(AppConstant.jsonPath);
      List<dynamic> data = jsonDecode(jsonString);
      List<SchoolInfoModel> schoolInfolsit = [];
      for (var element in data) {
        schoolInfolsit.add(SchoolInfoModel.fromJson(element));
      }
      return schoolInfolsit;
    } catch (e) {
      return [];
    }
  }
}
