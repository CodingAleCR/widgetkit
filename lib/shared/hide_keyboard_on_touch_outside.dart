import 'package:flutter/widgets.dart';

class HideKeyboardOnTouchOutside extends StatelessWidget {
  final Widget child;

  HideKeyboardOnTouchOutside({required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: child,
    );
  }
}
