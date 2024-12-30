import 'package:flutter/material.dart';
import 'package:tutorium_1/ui/badge_variant1.dart';
import 'package:tutorium_1/ui/badge_variant2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Badges in Flutter"),),
      body: Center(
        child: Column(
          children: [
            BadgeVariant1(),
            BadgeVariant2(),
          ],
        ),
      ),
    );
  }
}