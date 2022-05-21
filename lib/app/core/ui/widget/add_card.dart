import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {

  final PageRouteInfo route;

  const AddCard({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: IconButton(
          icon: const Icon(Icons.add, color: Colors.blue),
          iconSize: 150,
          onPressed: () => context.router.push(route),
        ),
      ),
    );
  }
}
