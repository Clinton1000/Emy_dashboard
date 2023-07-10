import 'package:admin/models/chart_area_data.dart';
import 'package:admin/screens/dashboard/components/chart.dart';
import 'package:admin/screens/dashboard/components/chart_area.dart';
import 'package:admin/screens/dashboard/components/chart_total_portfolio.dart';
import 'package:admin/screens/dashboard/components/digital_currcy_card.dart';
import 'package:admin/screens/dashboard/components/digital_currency_details.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:admin/screens/dashboard/components/recent_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2, vertical: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  SizedBox(
                    height: defaultPadding * 2.5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Total Portfolio",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ChartTotalPortfolio(),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  RecentTransactions()
                ],
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("USD Balanse",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: textColor, fontSize: 10)),
                      Icon(
                        Icons.expand_more,
                        color: secondaryColor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "1.445.00",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: Text(
                          "USD",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: defaultPadding / 2, bottom: defaultPadding),
                    child: Text("Wallet ID: 2QVT7CCOLOWEJ",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: textColor, fontSize: 10)),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding)),
                          onPressed: () {},
                          child: Text(
                            "Desposit",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: Colors.white, fontSize: 10),
                          )),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: secondarybgColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding)),
                          onPressed: () {},
                          child: Text(
                            "Withdraw",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: textColor, fontSize: 10),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: defaultPadding * 3, bottom: defaultPadding),
                    child: Text(
                      "My Portfolio",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding, vertical: defaultPadding),
                    decoration: BoxDecoration(
                        color: secondarybgColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Chart(),
                        DigitalCurrencyDetails(),
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
