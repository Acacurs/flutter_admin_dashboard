import 'package:flutter/material.dart';

class ProjectOverview extends StatefulWidget {
  const ProjectOverview({Key? key}) : super(key: key);

  @override
  State<ProjectOverview> createState() => _ProjectOverviewState();
}

class _ProjectOverviewState extends State<ProjectOverview> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Project overview"),
      ),
    );
  }
}
