import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/coming_soon_view.dart';
import 'package:flutter_application_1/views/home_view.dart';
import 'package:flutter_application_1/views/people_screen.dart';
import 'package:flutter_application_1/views/search_view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  final List<Widget> _pages = [
    const HomeView(),
    const ComingSoon(),
    const SearchView(),
    const PeopleScreen(),
    const Center(
      child: Text('downl'),
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_circle_outline_outlined,
                ),
                label: "Coming Soon"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: "people"),
          ],
        ),
      ),
    );
  }
}
