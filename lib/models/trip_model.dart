import 'package:trippy/models/person.dart';

class TripModel {
  int? id;
  String title;
  List<Person> partners;
  int durationInDays;
  String startDate;
  String endDate;

  TripModel(this.title, this.partners, this.durationInDays, this.startDate,
      this.endDate);
}