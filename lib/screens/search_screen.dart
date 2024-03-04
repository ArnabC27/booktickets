import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
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
          const Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrivals"),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
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
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 450,
                width: size.width * 0.42,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        )
                      ),
                    ),
                    const Gap(12),
                    Text(
                      "20% discount on the early booking of the tickets. Don't miss out.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: 205,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor survey",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const Gap(10),
                        Text(
                          "Take the survey about our services and get discount",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
