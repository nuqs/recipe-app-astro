import 'package:flutter/material.dart';
import 'package:recipe_app_astro/config/size_config.dart';
import 'package:recipe_app_astro/constant/color.dart';
import 'package:recipe_app_astro/utils/random_number.dart';
import 'package:recipe_app_astro/views/home/home_drink.dart';
import 'package:recipe_app_astro/views/home/home_food.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Menu",
              style: TextStyle(color: kBlackColor),
            ),
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    color: kBlackColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.blockSizeHorizontal,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.6,
                    width: 120,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      border: Border.all(
                        color: kSecondaryColor,
                      ),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                  vertical: 16,
                ),
                child: Column(
                  children: [
                    // search bar
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: kBlackColor.withOpacity(0.5),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(90.0)),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: const TextStyle(color: kGreyColor),
                          filled: true,
                          fillColor: kPrimaryBodyColor.withOpacity(0.1),
                          hintText: 'Search food'),
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    // food column
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeFood(item: "food")));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 130,
                            width: SizeConfig.screenWidth,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 24.0),
                                      height: 100,
                                      width: SizeConfig.screenWidth - 120,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(40),
                                          bottomRight: Radius.circular(20),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: kGreyColor.withOpacity(0.5),
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 64.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Food",
                                              style: TextStyle(fontSize: 24, color: kBlackColor, fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              RandomNumber.generateNumber() + " items",
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: kGreyColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  left: 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          spreadRadius: 1,
                                          offset: const Offset(0, 3),
                                          color: kGreyColor.withOpacity(0.5),
                                        )
                                      ],
                                    ),
                                    child: const CircleAvatar(
                                      radius: 34,
                                      backgroundImage: AssetImage(
                                        'assets/jpeg/food.jpeg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 6,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            spreadRadius: 1,
                                            offset: const Offset(0, 3),
                                            color: kGreyColor.withOpacity(0.5),
                                          )
                                        ],
                                      ),
                                      child: const Icon(
                                        Icons.chevron_right,
                                        size: 32,
                                        color: kSecondaryColor,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // beverage column
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeDrink(item: "drink")));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 130,
                            width: SizeConfig.screenWidth,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 24.0),
                                      height: 100,
                                      width: SizeConfig.screenWidth - 120,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(40),
                                          bottomRight: Radius.circular(20),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: kGreyColor.withOpacity(0.5),
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 64.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Beverages",
                                              style: TextStyle(fontSize: 24, color: kBlackColor, fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              RandomNumber.generateNumber().toString() + " items",
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: kGreyColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  left: 6,
                                  child: Container(
                                    height: 70.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/jpeg/beverage.jpeg',
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          spreadRadius: 1,
                                          offset: const Offset(0, 3),
                                          color: kGreyColor.withOpacity(0.5),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 6,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            spreadRadius: 1,
                                            offset: const Offset(0, 3),
                                            color: kGreyColor.withOpacity(0.5),
                                          )
                                        ],
                                      ),
                                      child: const Icon(
                                        Icons.chevron_right,
                                        size: 32,
                                        color: kSecondaryColor,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
