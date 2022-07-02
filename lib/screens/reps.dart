import 'package:flutter/material.dart';

class Reps extends StatelessWidget {
  int reps;

  Reps({required this.reps});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            reps < 10 ? "0" + reps.toString() : reps.toString(),
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
