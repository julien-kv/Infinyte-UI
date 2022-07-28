import 'package:flutter/material.dart';
import 'package:infinyte_ui/app/common/values/app_images.dart';

import 'custom_botton_nav_bar_item.dart';
import 'custon_nav_bar_tile.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    required this.items,
    this.backgroundColor = const Color(0XFFE3E6EC),
    this.itemBackgroudnColor = const Color(0XFFE3E6EC),
    this.itemOutlineColor = const Color(0XFFFFFFFF),
    this.selectedItemColor = const Color(0XFFE3E6EC),
    this.unselectedItemColor = const Color(0XFFE3E6EC),
    this.onTap,
  })  : assert(items != null),
        assert(items.length > 1 && items.length < 5);

  final List<CustomBottomNavigationBarItem> items;
  final Color backgroundColor;
  final Color itemBackgroudnColor;
  final Color itemOutlineColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final ValueChanged<int>? onTap;

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          _buildBackground(),
          _buildItems(),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      width: double.infinity,
      height: 90.0,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xffECF0F3), Color(0xffFFFFFF)])),
    );
  }

  Widget _buildItems() {
    return Container(
      height: 120.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: widget.items.map((item) {
          int index = widget.items.indexOf(item);
          return CustomBottomNavigationBarItemTile(
            item,
            widget.selectedItemColor,
            widget.unselectedItemColor,
            widget.itemOutlineColor,
            widget.backgroundColor,
            widget.itemBackgroudnColor,
            index,
            _changeCurrentIndex,
            _currentIndex,
          );
        }).toList(),
      ),
    );
  }

  void _changeCurrentIndex(int index) {
    if (widget.onTap != null) {
      widget.onTap!(index);
    }

    setState(() {
      _currentIndex = index;
    });
  }
}
