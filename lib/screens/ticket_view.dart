import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headLineStyle3),
                      const Spacer(),
                      Text("LDN", style: Styles.headLineStyle3),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
