//TODO: add your view model class here
import 'package:flutter/material.dart';
import 'package:know_our_school/Model/model.dart';
import 'package:know_our_school/data/local/repository/school_info_repo.dart';

class SchoolInfoProvider with ChangeNotifier {
  final SchoolInfoRepo _schoolInfoRepo;
  List<SchoolInfoModel> _schoolInfoList = [];

  SchoolInfoProvider(this._schoolInfoRepo);

  List<SchoolInfoModel> get schoolInfoList => _schoolInfoList;
  Future<void> getSchoolInfoList() async {
    _schoolInfoList = await _schoolInfoRepo.getSchoolInfoList();
    notifyListeners();
  }
}
