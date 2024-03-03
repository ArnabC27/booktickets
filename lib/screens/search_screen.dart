import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
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
          FittedBox(
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
                    child: const Center(
                        child: Text("Airline Tickets",)
                    ),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(50),),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                        child: Text("Hotels",)
                    ),
                  )
                ],
              ),
            ),
          ),
          const Gap(25),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departures"),
          const Gap(15),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrivals"),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                )
            ),
          ),
          const Gap(40),
          Text("Upcoming Flights", style: Styles.textStyle.copyWith(fontSize: 22),),
        ],
      ),
    );
  }
}
