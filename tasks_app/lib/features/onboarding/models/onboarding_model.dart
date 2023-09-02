import 'package:tasks_app/core/constants/app_images.dart';

class OnboardingModel{

  final String image;
  final String title;
  final String description;

 const OnboardingModel({
  required this.image,
  required this.title,
  required this.description,
 });

static List<OnboardingModel> get list => [
  const OnboardingModel(
    image: AppSvg.onBoarding1, 
    title: "Manage your tasks", 
    description: "You can easily manage all of your daily tasks in DoMe for free"
  ),
 const OnboardingModel(
    image: AppSvg.onBoarding2, 
    title: "Create daily routine", 
    description: "In Uptodo  you can create your personalized routine to stay productive"
  ),
  const OnboardingModel(
    image: AppSvg.onBoarding3, 
    title: "Orgonaize your tasks", 
    description: "You can organize your daily tasks by adding your tasks into separate categories"
  ),


];
}