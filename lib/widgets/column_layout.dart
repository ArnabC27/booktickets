import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Arnab C.",
          style: Styles.headLineStyle3,
        ),
        const Gap(5),
        Text(
          "Passenger",
          style: Styles.headLineStyle3,
        ),
      ],
    );
  }
}
