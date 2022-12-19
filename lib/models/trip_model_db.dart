import 'package:objectbox/objectbox.dart';
import 'package:trippy/models/person.dart';

@Entity()
class TripModelDb {
  int? id;
  String title;
  String partners;
  int durationInDays;
  String startDate;
  String endDate;

  TripModelDb(this.title, this.partners, this.durationInDays, this.startDate,
      this.endDate);
}