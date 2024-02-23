import 'package:flutter/material.dart';
import 'package:travel_app/utils/theme.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 80,
      decoration: BoxDecoration(color: CColors.mainColor, borderRadius: BorderRadius.circular(16)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.navigate_next,
            color: CColors.white,
            size: 50,
          )
        ],
      ),
    );
  }
}
