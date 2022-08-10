import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ImageLoader extends StatelessWidget {
  const ImageLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoadingIndicator(
      indicatorType: Indicator.ballBeat,
      colors: [Colors.grey],
      strokeWidth: 1.0,
      pathBackgroundColor: Colors.black,
    );
  }
}
