import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("SIGNORIA 0.00"),
          Text("NIFTY BANK 52,323.30"),
          Text("NIFTY FIN SERVICE 25,255.75"),
          Text("RELCHEMQ 162.73"),
        ],
      ),
    );
  }
}
