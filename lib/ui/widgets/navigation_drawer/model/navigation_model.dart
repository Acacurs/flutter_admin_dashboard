import 'package:admin_dashboard/ui/screen/error/widget_404.dart';
import 'package:admin_dashboard/ui/screen/project_overview.dart';
import 'package:flutter/material.dart';

class NavigationModel {
  String title, path;
  IconData icon;
  bool? isExpanded = false;
  List<NavigationModel> items;

  NavigationModel(
      {required this.title,
      required this.path,
      required this.icon,
      required this.items,
      this.isExpanded});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
      title: "Project overview",
      path: "/project-overview",
      icon: Icons.home,
      items: []),
];

class PageViewModel {
  String path;
  Widget widget;

  PageViewModel({
    required this.path,
    required this.widget,
  });
}

List<PageViewModel> pageViewModel = [
  PageViewModel(path: "/project-overview", widget: const ProjectOverview()),
  // error Widget
  PageViewModel(path: "/404", widget: const Widget404()),
];
