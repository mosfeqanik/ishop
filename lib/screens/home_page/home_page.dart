import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce1_project/modals/brand_list.dart';
import 'package:ecommerce1_project/modals/category_list.dart';
import 'package:ecommerce1_project/modals/products_list.dart';
import 'package:ecommerce1_project/screens/components/box_decoration.dart';
import 'package:ecommerce1_project/screens/search_page/search_page.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/screens/components/my_drawer.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

import 'components/heading_homepage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
          'https://www.svgrepo.com/show/501815/open-open-a-file.svg',
    ),
    Brand(
      name: 'Brands',
      imageColor: Colors.green,
      imageUrl:
          'https://www.svgrepo.com/show/501816/play-game.svg',
    ),
    Brand(
      name: 'Top Sellers',
      imageColor: Colors.yellowAccent,
      imageUrl:
          'https://www.svgrepo.com/show/501814/microphone1-broadcasting.svg',
    ),
    Brand(
      name: 'Today Deals',
      imageColor: Colors.orange,
      imageUrl:
          'https://www.svgrepo.com/show/501829/star.svg',
    ),
    Brand(
      name: 'Flash Sells',
      imageColor: Colors.lightBlue,
      imageUrl:
          'https://www.svgrepo.com/show/530258/medal.svg',
    ),
    Brand(
      name: 'Recent ',
      imageColor: Colors.teal,
      imageUrl:
          'https://www.svgrepo.com/show/501842/medal.svg',
    ),
  ];
  List<Product> Products = [
    Product(
      imageUrl:
          'https://img.freepik.com/free-photo/bohemian-man-with-his-arms-crossed_1368-3542.jpg',
    ),
    Product(
      imageUrl:
      'https://img.freepik.com/free-photo/young-female-smiling_1187-4947.jpg',
    ),
    Product(
      imageUrl:
      'https://img.freepik.com/free-photo/positive-brunet-man-with-crossed-arms_1187-5797.jpg',
    ),
    Product(
      imageUrl:
      'https://img.freepik.com/free-photo/man-pointing-lateral_1368-1637.jpg',
    ),
    Product(
      imageUrl:
      'https://img.freepik.com/free-photo/adorable-woman-with-toothy-smile-white_1187-5165.jpg',
    ),
    Product(
      imageUrl:
      'https://img.freepik.com/free-photo/portrait-happy-woman_186202-621.jpg',
    )
  ];
  List<Category> Categories = [
    Category(
        name: 'Beauty,Health & Hair',
        imageUrl:
            'https://img.freepik.com/free-photo/portrait-beautiful-white-pretty-woman-with-long-straight-hair-pink-rose-face_186202-3682.jpg?w=826&t=st=1706030698~exp=1706031298~hmac=11981d2d68ae0ff5b94f9d43f7457c99740247ea44bf88a989887f5668960b17'),
    Category(
        name: 'CellPhone & Tabs',
        imageUrl:
            'https://img.freepik.com/free-psd/realistic-phone-presentation_1104-139.jpg'),
    Category(
        name: 'Laptop & Accessories',
        imageUrl:
            'https://img.freepik.com/free-photo/laptop-with-white-screen-isolated-white-wall_231208-8590.jpg'),
    Category(
        name: 'Furniture',
        imageUrl:
            'https://img.freepik.com/free-psd/couch-isolated-transparent-background_191095-11201.jpg'),
    Category(
        name: 'Automobile & MotorCycle',
        imageUrl:
        'https://img.freepik.com/free-photo/headlight-notorcycle_1398-283.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawerPart(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(8),
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
                          _scaffoldKey.currentState?.openDrawer();
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SearchPage()),
                                );
                              }),
                        ),
                      ),
                      Badge(
                        label: Text('1'),
                        textColor: AppColors.kRedColor,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_outlined,
                            color: AppColors.kSecondaryGreyColor,
                            size: 30,
                          ),
                        ),
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
                                Brands[index].imageUrl!,
                                height: 40,
                                width: 40,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              Brands[index].name!,
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
                        decoration: buildBoxDecoration(),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.network(
                                  Categories[index].imageUrl!,
                                  height: 120,
                                ),
                              ),
                              Text(
                                Categories[index].name!,
                                style: TextThemes.SecondaryTextCategoryListsGrey,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                HeadingText(
                  TittleText: 'Featured Products',
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 80, // Set as you want or you can remove it also.
                    maxHeight: double.infinity,
                  ),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap : true,
                    scrollDirection: Axis.vertical,
                    itemCount: Products.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          decoration: buildBoxDecoration(),
                          child: Image.network(
                            Products[index].imageUrl!,
                            height: 120,
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }



}
