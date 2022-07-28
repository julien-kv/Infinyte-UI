import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinyte_ui/app/common/values/app_images.dart';

import 'custom_botton_nav_bar_item.dart';

class CustomBottomNavigationBarItemTile extends StatefulWidget {
  CustomBottomNavigationBarItemTile(
    this.item,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.itemOutlineColor,
    this.backgroundColor,
    this.itemBackgroudnColor,
    this.index,
    this.onChanged,
    this.currentIndex,
  );

  final CustomBottomNavigationBarItem item;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color itemOutlineColor;
  final Color backgroundColor;
  final Color itemBackgroudnColor;

  final int index;
  final ValueChanged<int> onChanged;

  final int currentIndex;
  @override
  _CustomBottomNavigationBarItemTileState createState() =>
      _CustomBottomNavigationBarItemTileState();
}

class _CustomBottomNavigationBarItemTileState
    extends State<CustomBottomNavigationBarItemTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectItem,
      child: _buildItem(),
    );
  }

  Widget _buildItem() {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.transparent,
          margin: const EdgeInsets.only(
            bottom: 20.0,
          ),
          child: AnimatedAlign(
            curve: Curves.easeOutCirc,
            duration: Duration(milliseconds: 300),
            alignment: widget.currentIndex == widget.index
                ? Alignment.topCenter
                : Alignment.bottomCenter,
            child: AnimatedContainer(
              padding: EdgeInsets.all(10.0),
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(210.0),
                ),
                color: widget.currentIndex == widget.index
                    ? widget.itemBackgroudnColor
                    : widget.backgroundColor,
                border: Border.all(color: widget.itemOutlineColor, width: 5),
              ),
              child: Container(
                width: widget.currentIndex == widget.index ? 46 : 27,
                height: widget.currentIndex == widget.index ? 46 : 27,
                color: widget.currentIndex == widget.index
                    ? widget.selectedItemColor
                    : widget.unselectedItemColor,
                child: Center(
                  child: SvgPicture.asset(
                    AppImages.bottomBarItem,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        // AnimatedOpacity(
        //   opacity: widget.currentIndex == widget.index ? 1.0 : 0.0,
        //   duration: Durtion(milliseconds: 150),
        //   curve: Curves.easeInOut,
        //   child: Align(
        //     alignment: Alignment.bottomCenter,
        //     child: Container(
        //       margin: EdgeInsets.only(bottom: 12.0),
        //       width: 70.0,
        //       child: Text(
        //         "widget.item.title",
        //         textAlign: TextAlign.center,
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  void selectItem() {
    widget.onChanged(widget.index);
  }
}
