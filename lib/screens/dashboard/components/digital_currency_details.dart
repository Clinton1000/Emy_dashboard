import 'package:admin/screens/dashboard/components/digital_currcy_card.dart';
import 'package:flutter/material.dart';

class DigitalCurrencyDetails extends StatelessWidget {
  const DigitalCurrencyDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DigitalCurrencyCard(
          svgScr: "assets/icons/btc.svg",
          color: Color.fromARGB(255, 209, 133, 18),
          subNameCurrecy: "BTC",
          nameCurrecy: "Bitcion",
          amountInDollars: "550,25 USD",
          percentage: "\$32 (2%)",
          perColor: Colors.redAccent,
          icon: Icons.arrow_drop_down,
        ),
        DigitalCurrencyCard(
          svgScr: "assets/icons/eth.svg",
          color: Color.fromARGB(255, 99, 104, 144),
          subNameCurrecy: "ETH",
          nameCurrecy: "Ethereum",
          amountInDollars: "445,75 USD",
          percentage: "\$32 (2%)",
          perColor: Colors.greenAccent,
          icon: Icons.arrow_drop_up,
        ),
        DigitalCurrencyCard(
          svgScr: "assets/icons/bnb.svg",
          color: Colors.cyan,
          subNameCurrecy: "BNB",
          nameCurrecy: "Binance",
          amountInDollars: "449,00 USD",
          percentage: "\$20 (1%)",
          perColor: Colors.greenAccent,
          icon: Icons.arrow_drop_up,
        )
      ],
    );
  }
}
