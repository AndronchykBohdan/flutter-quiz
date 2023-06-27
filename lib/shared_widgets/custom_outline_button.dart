import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
  });

  final String label;

  final VoidCallback onPressed;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          fixedSize: const Size(250, 50),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          side: const BorderSide(
            color: Colors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          textStyle: const TextStyle(
            fontSize: 18,
          )),
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
