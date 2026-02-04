import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../widgets/cart_item.dart';
import '../widgets/tolol_price_and_checkout_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: getMediumStyle(fontSize: 20, color: ColorManager.text),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(Insets.s14.sp),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, index) => const CartItem(),
                itemCount: 2,
                separatorBuilder: (_, __) => SizedBox(height: Sizes.s12.h),
              ),
            ),
            TotalPriceAndCheckoutButton(
              totalPrice: 399,
              checkoutButtonOnTap: () {},
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
