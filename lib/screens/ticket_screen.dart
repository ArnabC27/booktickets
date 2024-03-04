import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

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
              )
            ],
          )
        ],
      ),
    );
  }
}
