import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../models/user_info_model.dart';
import '../utils/app_styles.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 12),
        LatestTransactionListView()
      ],
    );
  }
}

class LatestTransactionListView extends StatefulWidget {
  const LatestTransactionListView({super.key});

  @override
  State<LatestTransactionListView> createState() =>
      _LatestTransactionListViewState();
}

class _LatestTransactionListViewState extends State<LatestTransactionListView> {
  final List<UserInfoModel> usersInfo = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          usersInfo.length,
          (index) => IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: usersInfo[index],
            ),
          ),
        ),
      ),
    );
  }
}
