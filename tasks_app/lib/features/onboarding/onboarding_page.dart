import 'package:flutter/material.dart';
import 'package:tasks_app/core/constants/app_colors.dart';
import 'package:tasks_app/core/services/app_navigator.dart';
import 'package:tasks_app/core/widgets/app_button.dart';
import 'package:tasks_app/features/auth/authentication/authentication_page.dart';
import 'package:tasks_app/features/onboarding/models/onboarding_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  final List<OnboardingModel> _onBoardingList = OnboardingModel.list;
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Opacity(
                    opacity:_isLastPage ? 0 : 1 ,
                    child: TextButton(
                      onPressed: (){
                        _pageController.animateToPage(
                            _onBoardingList.length - 1, 
                            duration: const Duration(milliseconds: 400) , 
                            curve: Curves.fastOutSlowIn,
                        );
                      }, 
                      child: Text(
                        'Skip'.toUpperCase(),
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.white.withOpacity(0.50),
                        ),
                      ) ,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2.0),
              Expanded(
                flex: 5,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _onBoardingList.length,
                  onPageChanged: (index){
                    setState(() {
                      _currentIndex = index;
                      _isLastPage = _currentIndex == (_onBoardingList.length-1);
                    });
                  },
                  itemBuilder:(context, index) => SvgPicture.asset(
                    _onBoardingList[index].image,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SmoothPageIndicator(
                count: _onBoardingList.length,
                controller: _pageController,
                effect: const JumpingDotEffect(
                  dotWidth: 26,
                  dotHeight: 4,
                  activeDotColor: Colors.white,
                  dotColor: AppColors.greyColor,
                ), 
              ),
              const SizedBox(height: 50),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      _onBoardingList[_currentIndex].title,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Text(
                      _onBoardingList[_currentIndex].description,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: Colors.white.withOpacity(0.87),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: (){
                      if(_currentIndex > 0){
                        _currentIndex--;
                        _pageController.animateToPage(
                            _currentIndex, 
                            duration: const Duration(milliseconds: 400) , 
                            curve: Curves.fastOutSlowIn,
                        );
                      }
                    }, 
                    child: Text(
                      'Back'.toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.white.withOpacity(0.50),
                      ),
                    ) ,
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 48,
                    child: AppButton(
                      title: (_isLastPage ? "Get Started" : "Next").toUpperCase(),
                       onPressed: (){
                        if(!_isLastPage){
                          _currentIndex++;
                          _pageController.animateToPage(
                            _currentIndex, 
                            duration: const Duration(milliseconds: 400) , 
                            curve: Curves.fastOutSlowIn,
                          );
                        }else{
                          AppNavigator.navigateTo(context,const AuthenticationPage());
                        }
                       },
                      ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}