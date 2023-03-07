// import 'package:dbox_web/constants/constants.dart';
// import 'package:dbox_web/constants/responsive.dart';
// import 'package:dbox_web/widgets/side_menu.dart';
// import 'package:flutter/material.dart';
// import 'package:websafe_svg/websafe_svg.dart';

// import 'package:flutter/foundation.dart' show kIsWeb;

// class MenuDrawer extends StatefulWidget {
//   final GlobalKey<ScaffoldState> scaffoldKey;
//   const MenuDrawer({Key? key, required this.scaffoldKey}) : super(key: key);

//   @override
//   _MenuDrawerState createState() => _MenuDrawerState();
// }

// class _MenuDrawerState extends State<MenuDrawer> {
//   //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: widget.scaffoldKey,
//       drawer: ConstrainedBox(
//         constraints: const BoxConstraints(maxWidth: 350),
//         child: const SideMenu(),
//       ),
//       body: Container(
//         padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
//         color: kBgDarkColor,
//         child: SafeArea(
//           right: false,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 // Once user click the menu icon the menu shows like drawer
//                 // Also we want to hide this menu icon on desktop
//                 if (!Responsive.isDesktop(context))
//                   IconButton(
//                     icon: const Icon(Icons.menu),
//                     onPressed: () {
//                       widget.scaffoldKey.currentState!.openDrawer();
//                     },
//                   ),
//                 if (!Responsive.isDesktop(context)) const SizedBox(width: 5),
//                 Expanded(
//                   child: TextField(
//                     onChanged: (value) {},
//                     decoration: InputDecoration(
//                       hintText: "Search",
//                       fillColor: kBgLightColor,
//                       filled: true,
//                       suffixIcon: Padding(
//                         padding:
//                             const EdgeInsets.all(kDefaultPadding * 0.75), //15
//                         child: WebsafeSvg.asset(
//                           "assets/Icons/Search.svg",
//                           width: 24,
//                         ),
//                       ),
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
