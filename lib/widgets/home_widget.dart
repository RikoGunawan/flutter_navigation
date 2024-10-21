import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required this.welcomeMessage,
  });

  final String welcomeMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          welcomeMessage,
          style: GoogleFonts.fredoka(
            textStyle: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: const [
                Column(
                  children: [
                    Icon(Icons.person),
                    Text('Profile'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.logout),
                    Text('Logout'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
