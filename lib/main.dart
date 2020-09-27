import 'package:flutter/material.dart';
import 'package:moorLearning/data/moor_database.dart';
import 'package:provider/provider.dart';

import 'data/Ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final db = AppDatabase();
    return MultiProvider(
      providers: [
        Provider(
          builder: (_) => db.taskDao,
        ),
        Provider(
          builder: (_) => db.tagDao,
        )
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
