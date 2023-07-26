import 'package:flutter/material.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  IconData? get icon => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: const [
          Text(
            'Police have has advised BNP to hold their rally at Golapbagh ground instead of Naya Paltan or Suhrawardy Udyan in the capital on Thursday. /n Sources said the party may set a deadline for the current government to accept their demand of an election-time neutral government.',
            style: TextStyle(
                fontSize: 15, letterSpacing: 1, fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
