import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';
import 'package:reuseify_app/features/home/presentation/widgets/bottom_nav_custom_painter.dart';

import 'cart_page.dart';
import 'home_page.dart';
import 'notification_page.dart';
import 'profile_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  static route() => MaterialPageRoute(
        builder: (context) => const BottomNavPage(),
      );

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  Size? size;
  final List<Widget> _pages = [
    const HomePage(),
    const NotificationPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    size ??= MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 80,
              width: size!.width,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size!.width, 80),
                    painter: BottomNavCustomPainter(),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              _onPageChanged(0);
                            },
                            tooltip: 'Home',
                            icon: FaIcon(
                              FontAwesomeIcons.house,
                              size: 18,
                              color: _selectedIndex == 0
                                  ? AppPallete.secondaryColor
                                  : AppPallete.tertiaryColor,
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              _onPageChanged(1);
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.solidBell,
                              size: 18,
                              color: _selectedIndex == 1
                                  ? AppPallete.secondaryColor
                                  : AppPallete.tertiaryColor,
                            ),
                            tooltip: 'Notification',
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              _onPageChanged(2);
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.cartShopping,
                              size: 18,
                              color: _selectedIndex == 2
                                  ? AppPallete.secondaryColor
                                  : AppPallete.tertiaryColor,
                            ),
                            tooltip: 'Cart',
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              _onPageChanged(3);
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.solidUser,
                              size: 18,
                              color: _selectedIndex == 3
                                  ? AppPallete.secondaryColor
                                  : AppPallete.tertiaryColor,
                            ),
                            tooltip: 'Profile',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    heightFactor: 0.5,
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: FloatingActionButton(
                        onPressed: () {},
                        shape: const CircleBorder(),
                        tooltip: 'Scan QR Code',
                        backgroundColor: AppPallete.primaryColor,
                        child: Image.asset(
                          "assets/images/scanner.png",
                          color: AppPallete.secondaryColor,
                          height: 36,
                          width: 36,
                          filterQuality: FilterQuality.low,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
