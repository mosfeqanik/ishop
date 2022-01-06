import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce1_project/modals/brand_list.dart';
import 'package:ecommerce1_project/modals/category_list.dart';
import 'package:ecommerce1_project/screens/widgets/badge.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/my_drawer.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/heading_homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> _carouselImages = [
    'https://image.freepik.com/free-vector/flash-sale-banner-template-with-thunderbolt_1361-1658.jpg',
    'https://img.freepik.com/free-vector/flash-sale-banner-template-with-thunder_22052-1145.jpg',
  ];
  List<Brand> Brands = [
    Brand(
      name: 'Top Categories',
      imageColor: Colors.red,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/icon_svg%2Fscan-barcode.svg?alt=media&token=e163c96b-0c35-4a65-8c3a-d9380866d7b6',
    ),
    Brand(
      name: 'Brands',
      imageColor: Colors.green,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/icon_svg%2Flight.svg?alt=media&token=1fbce735-119a-4b23-9b48-33ad2435a4b9',
    ),
    Brand(
      name: 'Top Sellers',
      imageColor: Colors.yellowAccent,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/icon_svg%2Fknight.svg?alt=media&token=d760f64b-077d-4ac8-a234-58d26ad29a4e',
    ),
    Brand(
      name: 'Today Deals',
      imageColor: Colors.orange,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/icon_svg%2Fdirect.svg?alt=media&token=55fdd428-5ff1-4ced-a265-0d9c4b674e43',
    ),
    Brand(
      name: 'Flash Sells',
      imageColor: Colors.lightBlue,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/icon_svg%2Fflash.svg?alt=media&token=58b44cc6-d0f8-43bf-bfdb-7544547eb8ac',
    ),
    Brand(
      name: 'Recent ',
      imageColor: Colors.teal,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/icon_svg%2Fchair.svg?alt=media&token=4108614e-8e29-479c-8ef5-0b452ea05aa1',
    ),
  ];
  List<Category> Categories = [
    Category(
        name: 'Automobile & MotorCycle',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/automobile.png?alt=media&token=609939ba-83a1-4bae-bd02-842d180fa8a3'),
    Category(
        name: 'Beauty,Health & Hair',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/cosmetic.png?alt=media&token=4b24e829-529a-462b-a838-09ac7cbd6bdf'),
    Category(
        name: 'CellPhone & Tabs',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/15.png?alt=media&token=3b32295d-3855-47f6-ace9-3fbbe33ccbb6'),
    Category(
        name: 'Laptop & Accessories',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/mac.png?alt=media&token=de4f60cc-6a9c-401f-851a-bf1196365919'),
    Category(
        name: 'Furniture',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/sofa.png?alt=media&token=1bf3eb98-350b-4623-a175-bea640cedc4a'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawerPart(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: AppColors.kSecondaryGreyColor,
                        size: 25,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                            readOnly: true,
                            decoration: const InputDecoration(
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  borderSide: BorderSide(
                                    color: AppColors.kSecondaryGreyColor,
                                  ),
                                ),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.kSecondaryGreyColor,
                                ),
                                prefixIcon: Icon(
                                  Icons.search_outlined,
                                  color: AppColors.kSecondaryGreyColor,
                                  size: 20,
                                )),
                            onTap: () {}),
                      ),
                    ),
                    Badge(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_outlined,
                          color: AppColors.kSecondaryGreyColor,
                          size: 30,
                        ),
                      ),
                      value: '1',
                      color: AppColors.kRedColor,
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 11 / 5,
                child: CarouselSlider(
                  items: _carouselImages
                      .map(
                        (item) => Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(item),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                height: 95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Brands.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 125,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: AppColors.kLightgreyColor, width: 1.0),
                            ),
                            child: SvgPicture.network(
                              Brands[index].imageUrl,
                              height: 40,
                              width: 40,
                              color: Brands[index].imageColor,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            Brands[index].name,
                            style: TextThemes.SecondaryTextCategoryListGrey,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              HeadingText(
                TittleText: 'Featured Categories',
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                height: 145,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: AppColors.kLightgreyColor, width: 1.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 10.0, right: 10),
                              child: Expanded(
                                child: Image.network(
                                  Categories[index].imageUrl,
                                  height: 120,
                                ),
                              ),
                            ),
                            Text(
                              Categories[index].name,
                              style: TextThemes.SecondaryTextCategoryListsGrey,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 5,),
              HeadingText(
                TittleText: 'Featured Products',
              ),

            ],
          ),
        ),
      ),
    );
  }

}
