import 'package:flutter/material.dart';
import 'package:travel_app/utils/theme.dart';
import 'package:travel_app/widgets/app_bold_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    List images = [
      "img2.png",
      "img3.png",
      "img1.png",
    ];
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/" + images[index]),
                    alignment: Alignment.bottomCenter)),
            child: Container(
              margin: const EdgeInsets.only(top: 150, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BoldText(text: "Discover "),
                      TextNormal(text: "World", size: 30),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 250,
                        child: TextNormal(
                            text:
                                "Discover, plan, and explore with our travel app! Your gateway to unforgettable adventures awaits. Start your journey now!"),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ResponsiveButton(
                        width: 250,
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexTwo) {
                      return Container(
                        margin: const EdgeInsets.all(4),
                        height: index == indexTwo ? 30 : 10,
                        width: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: index == indexTwo
                                ? CColors.mainColor
                                : CColors.mainColor.withOpacity(0.2)),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
