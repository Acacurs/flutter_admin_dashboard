import 'package:admin_dashboard/providers/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:admin_dashboard/ui/widgets/navigation_drawer/commons/collapsing_list_tile_items_widget.dart';
import '../custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class CollapsingListTile extends StatefulWidget {
  final String title, path;
  final IconData icon;
  final String? image;
  final AnimationController animationController;
  final bool isSelected;
  final Function()? onTap;
  final bool isTitle;
  final List<NavigationModel> items;

  CollapsingListTile(
      {required this.title,
      required this.path,
      required this.icon,
      required this.animationController,
      required this.isTitle,
      required this.items,
      this.isSelected = false,
      this.onTap,
      this.image});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  String listTileItemsPath = "";
  Animation<double>? widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    widthAnimation =
        Tween<double>(begin: 250, end: 60).animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    final pathProvider = Provider.of<PathProvider>(context, listen: true);
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        // decoration: BoxDecoration(
        //   borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        //   color: widget.isSelected
        //       ? Colors.transparent.withOpacity(0.3)
        //       : Colors.transparent,
        // ),
        width: widthAnimation!.value,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: <Widget>[
                (widget.image != null && widget.isTitle)
                    ? Image.asset(
                        widget.image!,
                        width: 25,
                        height: 25,
                      )
                    : Icon(
                        widget.icon,
                        color:
                            widget.isSelected ? Colors.white : Colors.white30,
                        size: 20.0,
                      ),
                SizedBox(width: sizedBoxAnimation!.value),
                (widthAnimation!.value >= 190)
                    ? Text(widget.title,
                        style: widget.isTitle
                            ? Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(color: Colors.white)
                            : widget.isSelected
                                ? listTitleSelectedTextStyle
                                : listTitleDefaultTextStyle)
                    : Container(),
                const Spacer(),
                (widthAnimation!.value >= 190 &&
                        !widget.isTitle &&
                        widget.path != "/project-overview")
                    ? RotatedBox(
                        quarterTurns: widget.isSelected ? 1 : 3,
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: widget.isSelected ? Colors.white : Colors.grey,
                          size: 15,
                        ))
                    : const SizedBox()
              ],
            ),
            (widthAnimation!.value >= 190 &&
                    widget.isSelected &&
                    widget.items.isNotEmpty)
                ? Column(
                    children: widget.items.map((e) {
                      return CollapsingListTileItems(
                        animationController: widget.animationController,
                        icon: e.icon,
                        title: e.title,
                        isSelected: pathProvider.getCurrrentPath == e.path,
                        onTap: () {
                          setState(() {
                            listTileItemsPath = e.path;
                          });
                          pathProvider.changeCurrentPath(e.path);
                        },
                      );
                    }).toList(),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
