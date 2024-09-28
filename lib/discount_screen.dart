import 'package:flutter/material.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<ItemHelper> items = [
      ItemHelper(title: "Discount Opening-50%", subTitle:
          "Opening discount for new discount", gradient: [
        Color(0xFF0052D4),
        Color(0xFF4364F7),
        Color(0xFF6FB1FC),
      ]),
      ItemHelper(title: "E-wallet-10%", subTitle:
      "Opening discount for new ", gradient: [
        Color(0xFF4776E6),
        Color(0xFF8E54E9),
      ]),
      ItemHelper(title: "Discount VisaCard", subTitle:
      "Opening discount for new discount", gradient: [
        Color(0xFFEC008C),
        Color(0xFFFC6767),
      ]),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            onPressed: () {},
            color: Colors.blue,
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        title: const Text(
          "Discount",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xFFBDBDBD), width: 1)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search discount",
                  style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 0),
                ),
                Icon(
                  Icons.search,
                  color: Color(0xFF2A3256),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade100,
            child: Column(
              children: [
                const SizedBox(
                  height: 23,
                ),
                ...List.generate(items.length, (index) => Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                      gradient:  LinearGradient(colors: items[index].gradient)),

                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].title,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Text(
                        items[index].subTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ) )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemHelper{
  final String title;
  final String subTitle;
  final List<Color> gradient;

  ItemHelper({
    required this.title,
    required this.subTitle,
    required this.gradient
});
}
