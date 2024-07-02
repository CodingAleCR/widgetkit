import 'package:flutter/widgets.dart';

class HideKeyboardOnTouchOutside extends StatelessWidget {
  final Widget child;

  HideKeyboardOnTouchOutside({required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
