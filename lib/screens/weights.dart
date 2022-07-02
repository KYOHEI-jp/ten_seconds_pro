import 'package:flutter/material.dart';

class Weights extends StatelessWidget {
  int weights;

  Weights({required this.weights});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            weights < 10 ? "0" + weights.toString() : weights.toString(),
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
