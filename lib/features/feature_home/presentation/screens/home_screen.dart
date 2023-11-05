import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/external_colors.dart';
import 'cart_screen.dart';
import 'order_details_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String route = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  List<Widget> bodies = const [
    OrderDetailsScreen(),
    OrderDetailsScreen(),
    CartScreen(),
    CartScreen(),
    CartScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: ExternalColors.yellow,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.explore, color: Color(0XFFD3D1D8)),
              activeIcon: Icon(Icons.explore, color: ExternalColors.yellow),
              label: "",
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.location_pin, color: Color(0XFFD3D1D8)),
                activeIcon:
                    Icon(Icons.location_pin, color: ExternalColors.yellow),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag, color: Color(0XFFD3D1D8)),
                activeIcon:
                    Icon(Icons.shopping_bag, color: ExternalColors.yellow),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outlined, color: Color(0XFFD3D1D8)),
                activeIcon:
                    Icon(Icons.favorite_outlined, color: ExternalColors.yellow),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/icons/Group.svg",
                    colorFilter: const ColorFilter.mode(
                        Color(0XFFD3D1D8), BlendMode.srcIn)),
                activeIcon: SvgPicture.asset("asset/icons/Group.svg",
                    colorFilter: const ColorFilter.mode(
                        ExternalColors.yellow, BlendMode.srcIn)),
                label: "")
          ]),
      body: bodies[currentPage],
    );
  }
}
