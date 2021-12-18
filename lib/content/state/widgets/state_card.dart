import 'package:flutter/material.dart';
import 'package:login_app/content/state/widgets/new_card.dart';

class StateCard extends StatelessWidget {
  final String title, contenido;

  const StateCard({
    Key? key,
    required this.title,
    required this.contenido,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      title: title,
      content: Text(contenido),
      topLeftWidget: const SizedBox(
        height: 48.0,
        width: 48.0,
        child: Center(
          child: CircleAvatar(
            minRadius: 14.0,
            maxRadius: 14.0,
          ),
        ),
      ),
    );
  }
}
