import 'package:admin_dashboard/constants/app_themes.dart';

import '../custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class CollapsingListTileItems extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;
  final bool isSelected;
  final Function()? onTap;

  const CollapsingListTileItems(
      {Key? key,
      required this.icon,
      required this.title,
      required this.animationController,
      this.isSelected = false,
      this.onTap})
      : super(key: key);

  @override
  _CollapsingListTileItemsState createState() =>
      _CollapsingListTileItemsState();
}

class _CollapsingListTileItemsState extends State<CollapsingListTileItems> {
  Animation<double>? widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    widthAnimation =
        Tween<double>(begin: 200, end: 70).animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: widthAnimation!.value,
        margin: const EdgeInsets.fromLTRB(0, 18, 0, 0),
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: <Widget>[
                Icon(
                  widget.icon,
                  color: widget.isSelected
                      ? AppThemes.lightPrimaryAppColor
                      : Colors.white30,
                  size: 20.0,
                ),
                SizedBox(width: sizedBoxAnimation!.value),
                (widthAnimation!.value >= 190)
                    ? Text(widget.title,
                        style: widget.isSelected
                            ? listTitleItemSelectedTextStyle
                            : listTitleItemDefaultTextStyle)
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
