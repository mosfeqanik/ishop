import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce1_project/modals/brand_list.dart';
import 'package:ecommerce1_project/screens/widgets/badge.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/my_drawer.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
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
          'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/icon_svg%2Fring-diamond.svg?alt=media&token=9d4108ec-c536-463d-a161-fc4d4c4c8c77',
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
  var _dotPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawerPart(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
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
                        height: 55,
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
                          padding: EdgeInsets.all(8),
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
                      onPageChanged: (val, carouselPageChangedReason) {
                        setState(() {
                          _dotPosition = val;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              DotsIndicator(
                dotsCount:
                    _carouselImages.length == 0 ? 1 : _carouselImages.length,
                position: _dotPosition.toDouble(),
                decorator: DotsDecorator(
                  activeColor: AppColors.kwhiteColor,
                  color: AppColors.kLightgreyColor.withOpacity(.5),
                  spacing: EdgeInsets.all(2),
                  activeSize: Size(8, 8),
                  size: Size(6, 6),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 7),
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Brands.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 125,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
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
                          SizedBox(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard() {
    Container(
      width: 200,
      height: 200,
      child: Column(
        children: [
          SvgPicture.network(
              'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/icon_svg%2Fscan-barcode.svg?alt=media&token=e163c96b-0c35-4a65-8c3a-d9380866d7b6')
        ],
      ),
    );
  }
}
