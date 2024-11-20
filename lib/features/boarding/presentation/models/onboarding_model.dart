class OnboardingModel {
  final String imagePath;
  final String title;
  final String description;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}
final List<OnboardingModel> onboardingPages = [
  OnboardingModel(
    imagePath: 'assets/images/Young_man_ordering_food_online.png',
    title: 'Get Food Delivered to Your Doorstep',
    description:
    'Our food delivery app makes it easy to order from your favorite restaurants and have your meals delivered to your doorstep.',
  ),
  OnboardingModel(
    imagePath: 'assets/images/Food_delivery.png',
    title: 'Discover New Restaurants and Cuisines with Our App',
    description:
    'Our food delivery app not only allows you to order from your favorite restaurants but also gives you the opportunity to discover new places to eat.',
  ),
  OnboardingModel(
    imagePath: 'assets/images/map_marker.png',
    title: 'Experience Convenient and Fast Food Delivery with Our App',
    description:
    'Say goodbye to waiting in line or dealing with traffic, our food delivery app will make ordering and receiving your food a breeze.',
  ),
];
