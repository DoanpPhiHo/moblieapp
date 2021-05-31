import 'package:app_asc/src/models/school_model.dart';

const _delay = Duration(milliseconds: 300);
Future<void> wait() => Future.delayed(_delay);

class SchoolRepository {
  Future<List<SchoolModel>> fetchSchools() async {
    await wait();
    return [1, 2, 3, 4, 5, 6].map((e) => SchoolModel('School $e', e)).toList();
  }
}
