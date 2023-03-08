import 'package:flutter/material.dart';

import 'CustomListTile.dart';

class News extends StatelessWidget {
  const News(
      {required this.name,
      required this.desc,
      required this.image,
      required this.time,
      super.key});
  final String? name;
  final String? desc;
  final String? image;
  final DateTime time;
  @override
  Widget build(BuildContext context) {
    if (DateTime.now().year == time.year){
      if(DateTime.now().month == time.month){
        if(DateTime.now().day == time.day){
          if (DateTime.now().minute == time.minute)  {
            int minuteTo = DateTime.now().minute - time.minute;
          }
        }
      }
    }
    int minuteTo = DateTime.now().minute - time.minute;
    return CustomListTile(
      // leading: Image.network(image),
      title: Text(
        name!,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        " ${minuteTo.toString()} мин. назад",
        style: TextStyle(fontSize: 16),
      ),
      trailing: image != null
          ? Image.network(
              image!,
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            )
          : SizedBox(),
      // subtitle: Text(desc!),
    );
  }
}
