import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trippy/constants/app_colors.dart';
import 'package:trippy/constants/text_styles.dart';
import 'package:trippy/models/trip_model.dart';

class TripItemWidget extends StatelessWidget {
  const TripItemWidget({Key? key, required this.tripModel}) : super(key: key);

  final TripModel tripModel;

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(8),
    child: ListTile(
      leading: CircleAvatar(backgroundColor: AppColors.main, radius: 28, child: Text(tripModel.title[0].toUpperCase(), style: TextStyles.appBarStyle,),),
      title: Text(tripModel.title, style: TextStyles.tripItemTitle,),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${tripModel.partners.length} Persons", style: TextStyles.tripItemSubTitle,),
          Text("${tripModel.startDate} To ${tripModel.endDate}", style: TextStyles.tripItemSubTitle,)
        ],
      ),
      onTap: () {},
    ),);
  }
}
