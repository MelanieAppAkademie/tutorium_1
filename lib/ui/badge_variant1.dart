import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorium_1/logic/badges_provider.dart';

class BadgeVariant1 extends StatefulWidget {
  const BadgeVariant1({super.key});

  @override
  State<BadgeVariant1> createState() => _BadgeVariant1State();
}

class _BadgeVariant1State extends State<BadgeVariant1> {
 // int _counter = context.watch<BadgesProvider>().counter;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [IconButton(onPressed: () {
        context.read<BadgesProvider>().increment();
      }, icon: Icon(Icons.favorite)),
      Positioned(right: 2, top: 2, child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle
        ),
        child: Consumer<BadgesProvider>(
          builder: (context, value, child) {
            return Text("${context.watch<BadgesProvider>().counter}", // String von Badges Provider implementieren
          style: TextStyle(color: Colors.white, fontSize: 12));
          },
          
        ),
      ),)
      ],
    );
  }
}
