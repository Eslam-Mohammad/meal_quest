import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_quest/core/routes/app_router.dart';
import 'package:meal_quest/features/boarding/presentation/models/onboarding_model.dart';
import 'package:meal_quest/features/boarding/presentation/views/widgets/custom_indicator_list.dart';
import 'package:meal_quest/features/boarding/presentation/views/widgets/navigation_button.dart';
import 'package:meal_quest/features/boarding/presentation/views/widgets/onboarding_item.dart';

class BoardingViewBody extends StatefulWidget {
  const BoardingViewBody({super.key});

  @override
  State<BoardingViewBody> createState() => _BoardingViewBodyState();
}

class _BoardingViewBodyState extends State<BoardingViewBody> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: onboardingPages.length,
              itemBuilder: (context, index) {
                final page = onboardingPages[index];
                return OnboardingItem(
                  imagePath: page.imagePath,
                  title: page.title,
                  description: page.description,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 66.0),
            child: Column(
              children: [
                // Custom widget for indicators
                CustomIndicatorList(
                  currentIndex: _currentIndex,
                  totalCount: onboardingPages.length,
                ),
                const SizedBox(height: 16),
                NavigationButton(
                  isLastPage: _currentIndex == onboardingPages.length - 1,
                  onNext: () {
                    if (_currentIndex == onboardingPages.length - 1) {
                      GoRouter.of(context).push(AppRouter.kLogInView);

                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
