import 'package:flutter/material.dart';

class ScreenLayout extends StatelessWidget {
  final Widget child;
  final bool showBackButton;
  final bool showFooter;

  // set defaults
  const ScreenLayout({
    super.key,
    required this.child,
    this.showBackButton = true,
    this.showFooter = true,
  });

  // fixed whole screen layout, no need for a scroller, only three screens
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // for responsive resizing
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showBackButton) ... [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(height: 14.0,)
              ],
              
              // whole content should take up every space
              Expanded(child: child),

              // just for mocking sake
              if (showFooter) ...[
                SizedBox(height: 18.0),
                Center(child: Image.asset('assets/images/meta.png', width: 60)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
