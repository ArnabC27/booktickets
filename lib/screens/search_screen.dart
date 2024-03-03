import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          const Gap(20),
          Container(
            child: Row(
              children: [
                Container(
                  width: size.width * 0.44,
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(50), ),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text("Airline Tickets",)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
