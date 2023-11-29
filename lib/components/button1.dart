import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const Button1({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        padding: const EdgeInsets.all(25),
        decoration:  BoxDecoration(
          // color: Theme.of(context).colorScheme.primary,
          color: Colors.orange.shade600,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}
