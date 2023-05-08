import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton({super.key, this.onTap, required this.title, });

  @override
  // ignore: library_private_types_in_public_api
  _AppButtonState createState() => _AppButtonState();

  final onTap;
  final String title;
}

class _AppButtonState extends State<AppButton> with TickerProviderStateMixin {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHighlightChanged: (value) {
          setState(() {
            isTapped = value;
          });
        },
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          height: isTapped ? 50 : 60,
          width: isTapped ? 140 : 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(3, 7),
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
