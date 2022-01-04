import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'img_network_assets_strings.dart';

class MyDrawerPart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 100,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                    NetworkImage(ImageNetworkAssetStrings.profile_image),
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Alex supran',style: TextThemes.BlackTextHeading,),
                    Text('Alex supran123@gmail.com',style: TextThemes.SecondaryTextDrawerGrey,),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 1,color: AppColors.kSecondaryGreyColor,),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('Home',style:TextThemes.DrawerlistItemTextGrey ,),
          ),
          const ListTile(
            leading: Icon(Icons.perm_identity_outlined),
            title: Text('Profile',style:TextThemes.DrawerlistItemTextGrey ,),
          ),
          const ListTile(
            leading: Icon(Icons.space_dashboard_outlined),
            title: Text('Orders',style:TextThemes.DrawerlistItemTextGrey ,),
          ),
          const ListTile(
            leading: Icon(Icons.favorite_border_outlined),
            title: Text('My Wishlists',style:TextThemes.DrawerlistItemTextGrey ,),
          ),
          const ListTile(
            leading: Icon(Icons.mode_comment_outlined),
            title: Text('Message',style:TextThemes.DrawerlistItemTextGrey ,),
          ),
          const ListTile(
            leading: Icon(Icons.account_balance_wallet_outlined),
            title: Text('Home',style:TextThemes.DrawerlistItemTextGrey ,),
          ),
          const ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Logout',style:TextThemes.DrawerlistItemTextGrey ,),
          ),
        ],
      ),
    );
  }
}
