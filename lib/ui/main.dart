import 'package:flutter/material.dart';
import 'package:harry_potter/data/model/harry_potter_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'screens/home_screen.dart';

void main() async{

   WidgetsFlutterBinding.ensureInitialized();
  //
  await Hive.initFlutter();

  Hive.registerAdapter(HarryPotterModelImplAdapter());

  await Hive.openBox<HarryPotterModel>('characters_harry_potter');

  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
