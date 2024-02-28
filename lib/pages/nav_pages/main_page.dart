import 'package:flutter/material.dart';
import 'package:travel_app/utils/theme.dart';
import 'package:travel_app/widgets/app_bold_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 70,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  size: 30,
                  color: CColors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: CColors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            alignment: AlignmentDirectional.topStart,
            child: const BoldText(text: "Explore"),
          ),
          const SizedBox(height: 30),
          //Tabbar
          Container(
            child: TabBar(
                labelPadding: const EdgeInsets.only(
                  left: 20,
                ),
                dividerHeight: 0,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Inspiration",
                  ),
                  Tab(
                    text: "Emotions",
                  )
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.infinity,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("images/k2.jpeg"), fit: BoxFit.fill)),
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
