import 'package:ecommerce1_project/screens/widgets/badge.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/my_drawer.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawerPart(),
      body: SafeArea(
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
          ],
        ),
      ),
    );
  }
}
