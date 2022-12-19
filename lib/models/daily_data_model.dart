import 'package:trippy/models/person.dart';

class DailyData {
  int? id;
  List<Person> personExpenses;
  String comments;

  DailyData(this.personExpenses, this.comments);
}