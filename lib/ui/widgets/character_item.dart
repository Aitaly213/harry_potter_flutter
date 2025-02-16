import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:harry_potter/data/model/harry_potter_model.dart';

class CharacterItem extends StatelessWidget {

  String image;
  String fullName;
  String birthDate;
  String hogwartsHouse;
  String interpretedBy;

   CharacterItem({
     this.image = "",
     required this.fullName,
     required this.birthDate,
     required this.hogwartsHouse,
     required this.interpretedBy,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
            borderRadius: BorderRadius.circular(8)),
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Image.network(width: 80, height: 100,image,
            errorBuilder: (context, error, stackTrace) =>
                SizedBox(width: 80, height: 100,child: Icon(Icons.signal_wifi_connected_no_internet_4,size: 80,)),
            ),
            Column(
              children: [
                Text(fullName),
                Text(birthDate),
                Text(hogwartsHouse),
                Text(interpretedBy),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
