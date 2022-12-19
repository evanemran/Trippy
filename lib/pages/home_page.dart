import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trippy/constants/app_texts.dart';
import 'package:trippy/models/person.dart';
import 'package:trippy/models/trip_model.dart';
import 'package:trippy/widget/trip_item_widget.dart';

import '../constants/text_styles.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Person> pList = [
      Person("Alex", 0),
      Person("Devid", 0),
      Person("Mark", 0),
      Person("Kubow", 0),
    ];
    List<TripModel> tripList = [
      TripModel("Cox's Bazar", pList, 3, "31 Oct", "2 Nov"),
      TripModel("Cox's Bazar", pList, 3, "31 Oct", "2 Nov"),
      TripModel("Cox's Bazar", pList, 3, "31 Oct", "2 Nov"),
      TripModel("Cox's Bazar", pList, 3, "31 Oct", "2 Nov"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppTexts.appName,
          style: TextStyles.appBarStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              itemCount: tripList.length, itemBuilder: (context, position) {
            var item = tripList[position];
            return TripItemWidget(tripModel: item);
          }))
        ],
      ),
    );
  }
}
