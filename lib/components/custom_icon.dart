import 'package:flutter/material.dart';

class AppCustomIcon extends StatelessWidget {
  final IconData icon;

  const AppCustomIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 15,
            color: Colors.black26,
          ),
        ],
      ),
      child: Icon(
        icon,
        color: Colors.purple,
      ),
    );
  }
}
