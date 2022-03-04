import 'package:flutter/material.dart';
class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
      //color: Colors.orange,
      width: 300,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: Colors.blue),
            ),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
