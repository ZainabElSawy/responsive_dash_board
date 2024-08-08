import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesBalance, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: DrawerItem(drawerItemModel: items[index]),
      ),
      itemCount: items.length,
    );
  }
}
