import 'package:admin_dashboard/ui/widgets/navigation_drawer/custom_navigation_drawer.dart';
import 'package:flutter/widgets.dart';

class PathProvider extends ChangeNotifier {
  PageController pageController = PageController(initialPage: 0);
  String currentPath = "/project-overview";
  int pageViewIndex = 0;
  //
  String get getCurrrentPath => currentPath;
  int get getPageViewIndex => pageViewIndex;
  PageController get getPageController => pageController;

  PathProvider();
  //
  void changeCurrentPath(String path) {
    currentPath = path;
    notifyListeners();
    getPageIndex(path);
  }

  //
  void getPageIndex(String path) {
    pageViewIndex = pageViewModel.indexWhere((element) => element.path == path);
    print("//? pageViewIndex ==> $pageViewIndex");
    if (pageViewIndex == -1) {
      pageController.jumpToPage(pageViewModel.length);
    } else {
      pageController.jumpToPage(pageViewIndex);
    }
    notifyListeners();
  }
}
