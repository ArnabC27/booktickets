import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(40),
              Text("Tickets", style: Styles.headLineStyle1,),
              const Gap(20),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous",),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              const SizedBox(height: 1,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15.5),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Arnab C.",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "5221 543498",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    const Gap(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "0055 444 77147",
                          secondText: "E-ticket Number",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11,),
                                Text(" *** 2462", style: Styles.headLineStyle3,),
                              ],
                            ),
                            const Gap(5),
                            Text("Payment method", style: Styles.headLineStyle4,),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\u{20B9}${4698.55}",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                )
              ),


            ],
          )
        ],
      ),
    );
  }
}
