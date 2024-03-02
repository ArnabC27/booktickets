import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';

import '../utils/app_styles.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size * 0.6,
      height: 350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              image: const DecorationImage(
                image: AssetImage("assets/images/one.jpg"),
              )
            ),
          )
        ],
      ),
    );
  }
}
