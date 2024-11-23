import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const String loadingImage =
    'https://developer.android.com/static/codelabs/basic-android-kotlin-compose-load-images/img/70e008c63a2a1139.png';

class CustomCacheImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  const CustomCacheImage({
    super.key,
    required this.image,
    this.height, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width:width ,
      height: height,
      fit: BoxFit.cover,
      imageUrl: image.isEmpty ? loadingImage : image,
      placeholder: (context, url) =>const LoadingWidget(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
class LoadingWidget extends StatelessWidget{
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return SizedBox(
      width: 50,
      height: 50,
      child: Center(
        child: CircularProgressIndicator.adaptive(
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

}