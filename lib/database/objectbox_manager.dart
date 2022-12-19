import 'dart:io';

import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../constants/app_texts.dart';
import '../models/trip_model_db.dart';
import '../objectbox.g.dart';

class ObjectBoxManager {
  late final Store store;

  late final Box<TripModelDb> _tripBox;

  ObjectBoxManager._create(this.store) {
    _tripBox = Box<TripModelDb>(store);
  }

  static Future<ObjectBoxManager> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(
        directory: p.join(docsDir.path, AppTexts.app_db_name));
    return ObjectBoxManager._create(store);
  }

  //Remove all the data
  static void removeAllData() async {
    final docsDir = await getApplicationDocumentsDirectory();
    Directory(docsDir.path + '/' + AppTexts.app_db_name).delete().then(
            (FileSystemEntity value) => print("DB Deleted: ${value.existsSync()}"));
  }


  ///save items.

  //Start tripModel part
  void saveTrips(List<TripModelDb> trips) {
    store.runInTransactionAsync(TxMode.write, _putTrips, trips);
  }

  static void _putTrips(Store store, List<TripModelDb> trip) =>
      store.box<TripModelDb>().putMany(trip);

  List<TripModelDb> getNotices() {
    final builder = _tripBox.query();
    Query<TripModelDb> query = builder.build();
    List<TripModelDb> notices = query.find();
    return notices;
  }

  void updateNotices(TripModelDb trip) async {
    _tripBox.putAsync(trip);
  }

  void deleteAllNotices() {
    _tripBox.removeAll();
  }
  //End of tripModel part
}