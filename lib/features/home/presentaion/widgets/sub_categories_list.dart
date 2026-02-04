import 'package:e_commerce_route/features/home/presentaion/widgets/sub_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/resources/values_manager.dart';
import 'category_card.dart';

class SubCategoriesList extends StatelessWidget {
  const SubCategoriesList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              'Laptops',
              style: getBoldStyle(
                color: ColorManager.primary,
                fontSize: FontSize.s14,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: CategoryCardItem(
              'Laptops',
              ImageAssets.categoryCardImage,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 26,
                  (_, index) => const SubCategoryItem(
                'Watches',
                ImageAssets.subcategoryCardImage,
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.75,
              mainAxisSpacing: Sizes.s8.h,
              crossAxisSpacing: Sizes.s8.w,
            ),
          ),
        ],
      ),
    );
  }
}
