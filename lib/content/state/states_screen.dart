import 'package:flutter/material.dart';
import 'package:login_app/content/state/widgets/state_card.dart';

class StatesScreen extends StatefulWidget {
  const StatesScreen({Key? key}) : super(key: key);

  @override
  _StatesScreen createState() => _StatesScreen();
}

class _StatesScreen extends State<StatesScreen> {
  final items = List<String>.generate(8, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return const StateCard(
            title: 'Estado',
            contenido:
                'La lógica te llevará de la a a la z. la imaginación te llevará a cualquier lugar - Albert Einstein',
          );
        });
  }
}
