import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_quest/core/utils/extension/responsive_size.dart';
import 'package:meal_quest/core/utils/widgets/custom_cache_image/custom_cache_image.dart';
import 'package:meal_quest/core/utils/widgets/custom_text/custom_text.dart';
import 'package:meal_quest/core/utils/widgets/horizontal_gap/horizontal_gap.dart';
import 'package:meal_quest/features/food/data/model/food_model.dart';

class FoodItem extends StatelessWidget {
  final ProductModel product;
  final Function()? onTap;
  const FoodItem({
    super.key,
    required this.product,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: context.widthPercent(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCacheImage(
                height: 200.h,
                width: double.infinity,
                image: product.images.first.toString(),
              ),
              Container(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      label: product.name,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,),
                        const HorizontalGap(0.02),
                        CustomText(
                          label: '4.8',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    CustomText(
                      label: '${product.price * product.discount / 100} Eg',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    // Row(
                    //   children: [
                    //     Container(
                    //       padding: const EdgeInsets.all(2),
                    //       width: context.screenWidth * 0.09,
                    //       height: context.screenHeight * 0.03,
                    //       decoration: BoxDecoration(
                    //         border: Border.all(
                    //           color: Colors.red,
                    //         ),
                    //         borderRadius: BorderRadius.circular(
                    //           AppBorder.b16,
                    //         ),
                    //       ),
                    //       child: FittedBox(
                    //         child: Text(
                    //           '${product.discount}%',
                    //           style: Theme.of(context).textTheme.titleSmall,
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: constraints.minWidth * 0.02,
                    //     ),
                    //     FittedBox(
                    //       child: Text(
                    //         '${product.price} Eg',
                    //         style: Theme.of(context)
                    //             .textTheme
                    //             .bodySmall!
                    //             .copyWith(
                    //               decoration: TextDecoration.lineThrough,
                    //             ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
