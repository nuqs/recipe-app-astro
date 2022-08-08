import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app_astro/bloc/details/detail_bloc.dart';
import 'package:recipe_app_astro/constant/color.dart';
import 'package:recipe_app_astro/models/drink_details.dart';
import 'package:recipe_app_astro/utils/random_number.dart';
import 'package:recipe_app_astro/widget/image_loader.dart';

class DetailDrink extends StatefulWidget {
  final String item;
  final String id;
  final String imageUrl;
  final String rating;
  const DetailDrink({Key? key, required this.item, required this.id, required this.imageUrl, required this.rating}) : super(key: key);

  @override
  State<DetailDrink> createState() => _DetailDrinkState();
}

class _DetailDrinkState extends State<DetailDrink> {
  final _pageController = PageController();
  final DetailBloc _detailBloc = DetailBloc();
  int _current = 1;
  int _index = 0;
  double _heightPageview = 2000.0;

  @override
  void initState() {
    _detailBloc.add(GetDetail(item: widget.item, id: widget.id));
    super.initState();
  }

  void continueButtonTapped(int index) {
    if (index == 0) {
      _heightPageview = 2000.0;
    } else if (index == 1) {
      _heightPageview = 500.0;
    } else {
      _heightPageview = 100.0;
    }
    setState(() {
      _heightPageview;
      _index = index;
    });
    // animate to next pageview
    _pageController.animateToPage(
      index,
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 100),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(400),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: kBlackColor,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: widget.id,
                  child: CachedNetworkImage(
                    imageUrl: widget.imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Padding(padding: EdgeInsets.all(90), child: ImageLoader()),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          const Icon(Icons.star, size: 20, color: kBlackColor),
                          Text(
                            widget.rating,
                            style: const TextStyle(fontSize: 16, color: kBlackColor),
                          ),
                          const Text(
                            " ",
                            style: TextStyle(fontSize: 16, color: kBlackColor),
                          ),
                          const Icon(Icons.circle, size: 8, color: kGreyColor),
                          const Text(
                            " 15:06",
                            style: TextStyle(fontSize: 16, color: kBlackColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 16,
                  child: Wrap(
                    children: [
                      Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: kSecondaryColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.play_arrow_rounded, size: 50, color: kBlackColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
                  padding: const EdgeInsets.only(top: 6, bottom: 100),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
                        child: Row(
                          children: [
                            const Icon(Icons.chat, size: 30, color: kBlackColor),
                            const SizedBox(width: 6),
                            Text(
                              RandomNumber.generateNumber(),
                              style: const TextStyle(fontSize: 20, color: kBlackColor),
                            ),
                            const Spacer(),
                            const Icon(Icons.star_border_rounded, size: 30, color: kBlackColor),
                            const SizedBox(width: 16),
                            const Icon(Icons.bookmark_outline_rounded, size: 30, color: kBlackColor),
                            const SizedBox(width: 16),
                            const Icon(Icons.share_outlined, size: 30, color: kBlackColor),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: kGreyColor.withOpacity(0.2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 22),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: kGreyColor.withOpacity(0.2),
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                              color: kPrimaryColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 3),
                                  color: kGreyColor.withOpacity(0.2),
                                )
                              ]),
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    continueButtonTapped(0);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(15)), color: _index == 0 ? kSecondaryColor : kPrimaryColor),
                                    height: 55.0,
                                    child: Center(
                                      child: Text(
                                        'Ingredients',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: _index == 0 ? kPrimaryColor : kGreyColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    continueButtonTapped(1);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(15)), color: _index == 1 ? kSecondaryColor : kPrimaryColor),
                                    height: 55.0,
                                    child: Center(
                                      child: Text(
                                        'Steps',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: _index == 1 ? kPrimaryColor : kGreyColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    continueButtonTapped(2);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(15)), color: _index == 2 ? kSecondaryColor : kPrimaryColor),
                                    height: 55.0,
                                    child: Center(
                                      child: Text(
                                        'Nutritions',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: _index == 2 ? kPrimaryColor : kGreyColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _heightPageview,
                        child: BlocProvider(
                          create: (_) => _detailBloc,
                          child: BlocListener<DetailBloc, DetailState>(
                            listener: (context, state) {
                              if (state is DetailError) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(state.message!),
                                  ),
                                );
                              }
                            },
                            child: BlocBuilder<DetailBloc, DetailState>(builder: (context, state) {
                              if (state is DetailDrinkLoaded) {
                                List<DrinkDetails> detail = state.detail;
                                // split the number and unit of the measurement
                                // if error, means improper backend
                                List<String> measurement = detail[0].strMeasure8!.split(" ");
                                int measurementInt = int.parse(measurement[0]);
                                String measurementStr = (measurementInt * _current).toString();
                                return detail.isNotEmpty
                                    ? PageView.builder(
                                        physics: const NeverScrollableScrollPhysics(),
                                        // 3 pageview
                                        itemCount: 3,
                                        controller: _pageController,
                                        itemBuilder: (BuildContext context, index) {
                                          if (index == 0) {
                                            return Padding(
                                              padding: const EdgeInsets.all(16),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          const Text(
                                                            "Ingredients for",
                                                            style: TextStyle(fontSize: 28, color: kBlackColor, fontWeight: FontWeight.bold),
                                                          ),
                                                          Text(
                                                            _current.toString() + " servings",
                                                            style: const TextStyle(fontSize: 24, color: kBlackColor),
                                                          ),
                                                        ],
                                                      ),
                                                      const Spacer(),
                                                      ClipOval(
                                                        child: Material(
                                                          color: kSecondaryColor,
                                                          child: InkWell(
                                                            splashColor: Colors.red,
                                                            onTap: () {
                                                              setState(() {
                                                                _current++;
                                                              });
                                                            },
                                                            child: const SizedBox(width: 30, height: 30, child: Icon(Icons.add, size: 14, color: kPrimaryColor)),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 16),
                                                      Text(
                                                        _current.toString(),
                                                        style: const TextStyle(fontSize: 20, color: kBlackColor),
                                                      ),
                                                      const SizedBox(width: 16),
                                                      ClipOval(
                                                        child: Material(
                                                          color: kSecondaryColor,
                                                          child: InkWell(
                                                            splashColor: Colors.red,
                                                            onTap: () {
                                                              if (_current > 1) {
                                                                setState(() {
                                                                  _current--;
                                                                });
                                                              } else {
                                                                // do nothing
                                                              }
                                                            },
                                                            child: const SizedBox(width: 30, height: 30, child: Icon(Icons.remove, size: 14, color: kPrimaryColor)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  // 15 because backend is not proper, no list to get length
                                                  // will use first index because again no list is constructed for ingredients
                                                  for (var i = 0; i < 20; i++) ...[
                                                    Column(
                                                      children: [
                                                        Divider(
                                                          thickness: 1,
                                                          color: kGreyColor.withOpacity(0.2),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              height: 50.0,
                                                              width: 50.0,
                                                              alignment: Alignment.center,
                                                              child: ClipRRect(
                                                                borderRadius: BorderRadius.circular(10.0),
                                                                child: CachedNetworkImage(
                                                                  imageUrl: detail[0].strDrinkThumb!,
                                                                  fit: BoxFit.cover,
                                                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(20),
                                                                child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Text(
                                                                      detail[0].strIngredient2!,
                                                                      style: const TextStyle(color: kBlackColor, fontSize: 18, fontWeight: FontWeight.bold),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 6,
                                                                    ),
                                                                    Text(
                                                                      measurementStr + " " + measurement[1],
                                                                      style: const TextStyle(
                                                                        color: kGreyColor,
                                                                        fontSize: 14,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ],
                                              ),
                                            );
                                          } else if (index == 1) {
                                            return Padding(
                                              padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                                              child: Container(
                                                color: Colors.white,
                                                child: Text(
                                                  detail[0].strInstructions!,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else {
                                            return Container();
                                          }
                                        },
                                      )
                                    : Container();
                              }
                              return Container();
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
