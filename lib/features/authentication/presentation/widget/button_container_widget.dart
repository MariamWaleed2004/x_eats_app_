import 'package:flutter/material.dart';

class ButtonContainerWidget extends StatelessWidget {
  final VoidCallback? onTapListener;
  final Widget? child;
  const ButtonContainerWidget({Key? key, this.child, this.onTapListener})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapListener,
      child: Container(
        width: 366,
        height: 46,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: child),
      ),
    );
  }
}
