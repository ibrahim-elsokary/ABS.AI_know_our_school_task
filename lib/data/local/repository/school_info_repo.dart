import 'package:know_our_school/Model/model.dart';

abstract class SchoolInfoRepo {
  Future<List<SchoolInfo>> getSchoolInfoList();
}
