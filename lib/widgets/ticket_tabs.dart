import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(50),),
                color: Colors.white,
              ),
              child: Center(
                  child: Text(firstTab,)
              ),
            ),
            Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(50),),
                color: Colors.transparent,
              ),
              child: Center(
                  child: Text(secondTab,)
              ),
            )
          ],
        ),
      ),
    );
  }
}
