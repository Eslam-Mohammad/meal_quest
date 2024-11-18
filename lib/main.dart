import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();//

  runApp(const MealQuestApp());
}

class MealQuestApp extends StatelessWidget {
  const MealQuestApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig:router ,
    );
  }
}


