import 'package:ecommerce1_project/modals/category_list.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/my_drawer.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Categories',
          style: TextThemes.RedTextMedium,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.kgreyColor),
      ),
      drawer: MyDrawerPart(),
      body: ListView.builder(
        itemCount: Categories.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(width: 1, color: AppColors.kLightgreyColor),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 10, bottom: 10),
              leading: Image.network(
                Categories[index].imageUrl,
                height: 120,
                width: 100,
                fit: BoxFit.cover,
              ),
              title: Text(
                Categories[index].name,
                style: TextThemes.BlackTextMedium,
              ),
              subtitle: Padding(
                padding:  EdgeInsets.only(top: 15.0,left: 10),
                child: Text(
                  ' View Sub-Categories|View Products',
                  style: TextThemes.GreyTextSmallUnderline,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
