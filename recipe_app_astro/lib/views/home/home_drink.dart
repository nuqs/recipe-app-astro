import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app_astro/bloc/categories/categories_bloc.dart';
import 'package:recipe_app_astro/bloc/category_list/category_list_bloc.dart';
import 'package:recipe_app_astro/config/size_config.dart';
import 'package:recipe_app_astro/constant/color.dart';
import 'package:recipe_app_astro/models/drink_categories.dart';
import 'package:recipe_app_astro/models/drink_category_list.dart';
import 'package:recipe_app_astro/utils/random_number.dart';
import 'package:recipe_app_astro/views/details/detail_drink.dart';
import 'package:recipe_app_astro/widget/image_loader.dart';

class HomeDrink extends StatefulWidget {
  final String item;
  const HomeDrink({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<HomeDrink> createState() => _HomeDrinkState();
}

class _HomeDrinkState extends State<HomeDrink> {
  final CategoriesBloc _categoriesBloc = CategoriesBloc();
  final CategoryListBloc _categoryListBloc = CategoryListBloc();

  @override
  void initState() {
    _categoriesBloc.add(GetCategories(item: widget.item));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "Good morning Akila!",
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
      body: BlocProvider(
        create: (_) => _categoriesBloc,
        child: BlocListener<CategoriesBloc, CategoriesState>(
          listener: (context, state) {
            if (state is CategoriesError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<CategoriesBloc, CategoriesState>(builder: (context, state) {
            if (state is CategoriesDrinkLoaded) {
              List<DrinkCategories> categories = state.categories;
              String category = state.categories[0].strCategory!;
              _categoryListBloc.add(GetCategoryList(item: widget.item, category: category));
              return SingleChildScrollView(
                  child: categories.isNotEmpty
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 26,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Delivering to",
                                    style: TextStyle(color: kGreyColor),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Current Location",
                                        style: TextStyle(color: kBlackColor, fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Icon(Icons.keyboard_arrow_down, size: 24, color: kSecondaryColor)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
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
                                        hintText: 'Search beverage'),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: SizeConfig.screenWidth,
                                  height: 220,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: categories.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        children: [
                                          index == 0 ? const SizedBox(width: 2) : const SizedBox(width: 0),
                                          Container(
                                            width: 100,
                                            margin: const EdgeInsets.only(
                                              left: 24.0,
                                            ),
                                            decoration: const BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.all(Radius.circular(20))),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    _categoryListBloc.add(GetCategoryList(item: widget.item, category: categories[index].strCategory!));
                                                  },
                                                  child: SizedBox(
                                                    width: 100,
                                                    height: 100,
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      child: CachedNetworkImage(
                                                        imageUrl: "https://i.picsum.photos/id/431/5398/3599.jpg?hmac=bc325kFqsm626RGhgs-XwG_GFqd4x3VmXtramO12qL8",
                                                        fit: BoxFit.cover,
                                                        placeholder: (context, url) => const Padding(padding: EdgeInsets.all(64), child: ImageLoader()),
                                                        errorWidget: (context, url, error) => const Icon(Icons.error),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                                  child: Text(
                                                    categories[index].strCategory!,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: const TextStyle(fontSize: 14, color: kBlackColor, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          index == (categories.length - 1) ? const SizedBox(width: 26) : const SizedBox(width: 0),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 26,
                              ),
                              child: Text(
                                "Popular Beverage",
                                style: TextStyle(color: kBlackColor, fontSize: 24),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            BlocProvider(
                              create: (_) => _categoryListBloc,
                              child: BlocListener<CategoryListBloc, CategoryListState>(
                                listener: (context, state) {
                                  if (state is CategoryListError) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(state.message!),
                                      ),
                                    );
                                  }
                                },
                                child: BlocBuilder<CategoryListBloc, CategoryListState>(builder: (context, state) {
                                  if (state is CategoryListDrinkLoaded) {
                                    List<DrinkCategoryList> category = state.categoryList;
                                    String rating = RandomNumber.generateRating();
                                    String number = RandomNumber.generateNumber();
                                    return categories.isNotEmpty
                                        ? ListView.builder(
                                            physics: const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: category.length,
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                key: const Key("drinkDetailNavigator"),
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDrink(item: "drink", id: category[index].idDrink!, imageUrl: category[index].strDrinkThumb!, rating: rating)));
                                                },
                                                child: Container(
                                                  width: 100,
                                                  decoration: const BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.all(Radius.circular(20))),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        width: SizeConfig.screenWidth,
                                                        height: 200,
                                                        child: Hero(
                                                          tag: category[index].idDrink!,
                                                          child: CachedNetworkImage(
                                                            imageUrl: category[index].strDrinkThumb!,
                                                            fit: BoxFit.cover,
                                                            placeholder: (context, url) => const Padding(padding: EdgeInsets.all(90), child: ImageLoader()),
                                                            errorWidget: (context, url, error) => const Icon(Icons.error),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 26.0),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              category[index].strDrink!,
                                                              style: const TextStyle(fontSize: 16, color: kBlackColor, fontWeight: FontWeight.bold),
                                                            ),
                                                            const SizedBox(
                                                              height: 4,
                                                            ),
                                                            Row(
                                                              children: [
                                                                const Icon(Icons.star, size: 16, color: kSecondaryColor),
                                                                Text(
                                                                  rating,
                                                                  style: const TextStyle(fontSize: 14, color: kSecondaryColor),
                                                                ),
                                                                Text(
                                                                  "  (" + number + " ratings)",
                                                                  style: const TextStyle(fontSize: 14, color: kGreyColor),
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 24,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          )
                                        : Container();
                                  }
                                  return Container();
                                }),
                              ),
                            ),
                          ],
                        )
                      : Container());
            }
            return Container();
          }),
        ),
      ),
    );
  }
}
