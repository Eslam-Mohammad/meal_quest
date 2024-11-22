import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_quest/core/constants/padding_values/padding_values.dart';
import 'package:meal_quest/core/utils/food_item/food_item.dart';
import 'package:meal_quest/core/utils/widgets/custom_text/custom_text.dart';
import 'package:meal_quest/core/utils/widgets/custom_text_form_field_widget.dart';
import 'package:meal_quest/features/food/data/model/food_model.dart';

const String food = 'Food';
String leftArrow = 'assets/icons/arrow-back-outline.svg';
String cartIcon = 'assets/icons/cart-sharp.svg';
String searchIcon = 'assets/icons/search-sharp.svg';

List<String> categories = [
  'Dinner Food',
  'Economic Food',
  'Hot Food',
  'Family Food',
];

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(leftArrow),
        ),
        title: CustomText(
          label: food,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(cartIcon),
          ),
        ],
      ),
      body: Column(
        children: [
          CustomTextField(
            padding: EdgeInsets.all(PaddingValues.p14.w),
            prefixIcon: SvgPicture.asset(
              searchIcon,
              width: 20.w,
              height: 20.h,
              fit: BoxFit.none,
              color: const Color(0xffB3B3B3),
            ),
            contentPadding: const EdgeInsetsDirectional.all(0),
            hintText: 'Search food',
            hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          ),
          SizedBox(
            height: 50.h,
            child: ListView.builder(
              padding: EdgeInsetsDirectional.only(start: 14.w),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0XFFF3F1F1),
                  ),
                  child: CustomText(
                    label: categories[index],
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                );
              },
            ),
          ),
          FoodItem(
            product: ProductModel(
              images: ['https://s3-alpha-sig.figma.com/img/588c/30d1/df34724f2ab72952dc0e2cdc75418ddc?Expires=1733097600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jstvOvC4F8Qez8rgp3PK9XDxdFa9-79pZjqBqP1bWBM6Z~jkpQ4YdNvqSQ89IpTQ2tl3JmHBiPWmZqFK97b4M4VCC58fSWZXjQZ1BSVFwTMX7hGEwkdvZLM9FFn5GG4kzStQZY443m-gD72wPTH679QYxkOSP5ehHqXFXyRfATyM~eqGbui0g7-YvDm0ao9DraZolCJtlV-g3BEdc839FzXRLFm5n3jw1KcuC-ZpnOKGcQV~iSG~yGk6KhHuQ0wBTrXMKnN15Lw64Vby5m6jQrRTfFGcPaNAGlsKdOX1suAT58DOGx0Xw2iIm6MggkHNYjnWlSX8xLYl7qprx5lcVw__',],
              name: 'Product Name',
              price: 115,
            ),
          ),
        ],
      ),
    );
  }
}
