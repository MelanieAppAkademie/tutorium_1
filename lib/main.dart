import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorium_1/logic/badges_provider.dart';
import 'package:tutorium_1/ui/homescreen_ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<BadgesProvider>(create: (_) => BadgesProvider())
    ], child: MaterialApp(home: HomeScreen()));
  }
}
