import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import 'active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return ActiveDrawerItem(drawerItemModel: drawerItemModel);
    } else {
      return InActiveDrawerItem(drawerItemModel: drawerItemModel);
    }
  }
}

