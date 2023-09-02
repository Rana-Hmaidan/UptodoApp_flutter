import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks_app/core/constants/app_colors.dart';
import 'package:tasks_app/core/constants/app_images.dart';
import 'package:tasks_app/features/calendar/calendar_page.dart';
import 'package:tasks_app/features/focuse/focuse_page.dart';
import 'package:tasks_app/features/todo_list/todo_list_page.dart';
import 'package:tasks_app/features/user_profile/user_profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  List<Widget> get _screens => const [
    TodoListPage(),
    CalendarPage(),
    FocusePage(),
    UserProfilePage(),
  ];

  List<String> get _screensTitles => const [
    "Home",
    "Calendar",
    "Focuse",
    "User Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screensTitles[_currentIndex]),
        centerTitle: true,
        leading: _currentIndex != 0 ? const SizedBox() : IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(AppSvg.sortIcon,),
        ),
        actions: _currentIndex != 0 ? [] : [
          Container(
            width: 42,
            height: 42,
            margin: const EdgeInsets.only(right: 16.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/userImage.jpg"),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        child: SvgPicture.asset(
          AppSvg.add,
          width: 32,
          height: 32,
        ),
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                backgroundColor: AppColors.navigateColor,
                shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20.0),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: AppColors.navigateColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add Task",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 16.0,),
                      TextField(
                        decoration: const InputDecoration(
                          hintText: "Add yor task title...",
                        ),
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: AppColors.greyColor,
                        ),
                        cursorColor: AppColors.primaryColor,
                      ),
                      const SizedBox(height: 16.0,),
                      TextField(
                        decoration: const InputDecoration(
                          hintText: "Description",
                        ),
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: AppColors.greyColor,
                        ),
                        cursorColor: AppColors.primaryColor,
                      ),
                      const SizedBox(height: 16.0,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: (){}, 
                                icon: SvgPicture.asset(AppSvg.clockOutline, width: 20,height: 20,),
                              ),
                              IconButton(
                                onPressed: (){}, 
                                icon: SvgPicture.asset(AppSvg.category, width: 20,height: 20,),
                              ),
                              IconButton(
                                onPressed: (){}, 
                                icon: SvgPicture.asset(AppSvg.piriortyIcon, width: 20,height: 20,),
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: (){}, 
                            icon: SvgPicture.asset(AppSvg.send , width: 20,height: 20,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            });
        },
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor:AppColors.navigateColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.87),
        onTap: (index){
          _currentIndex = index;
          setState(() {
            
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.homeOutline),
            activeIcon: SvgPicture.asset(AppSvg.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.calendarOutline),
            activeIcon: SvgPicture.asset(AppSvg.calendar),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.clockOutline),
            activeIcon: SvgPicture.asset(AppSvg.clock),
            label: "Focuse",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.user),
            label: "Profile",
          ),

        ],
      ),
      body: _screens[_currentIndex],
    );
  }
}