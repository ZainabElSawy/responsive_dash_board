import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../utils/app_images.dart';
import 'drawer_items_listview.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: "Lekan Okeowo",
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
          DrawerItemsListView()
        ],
      ),
    );
  }
}

