import 'package:admin_dashboard/app_localizations.dart';
import 'package:flutter/material.dart';

class AboutAppInformation extends StatelessWidget {
  const AboutAppInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 350),
      child: Container(
        decoration: BoxDecoration(
            color:
                Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.4),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        padding: const EdgeInsets.all(1.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0))),
              child: Row(
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context)!
                        .translate("AboutScreenCountryAvailable"),
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/countries/niger.png",
                                fit: BoxFit.cover,
                                height: 20,
                                width: 20,
                              ),
                              Text(
                                "Niger",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blueGrey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context)!
                        .translate("AboutScreenDocumentsAvailable"),
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.folder,
                              size: 15.0,
                              color: Colors.blue[900],
                            ),
                            Text(
                              AppLocalizations.of(context)!
                                  .translate("bacXModuleListLessonText"),
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.folder,
                              size: 15.0,
                              color: Colors.blue[900],
                            ),
                            Text(
                              AppLocalizations.of(context)!
                                  .translate("bacXModuleListExerciseText"),
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.folder,
                              size: 15.0,
                              color: Colors.blue[900],
                            ),
                            Text(
                              AppLocalizations.of(context)!
                                  .translate("bacXModuleListExam"),
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blueGrey[500],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context)!
                        .translate("AboutScreenCountryAvailableSoon"),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/countries/senegal.jpg",
                                fit: BoxFit.cover,
                                height: 20,
                                width: 20,
                              ),
                              const Text(
                                "Sénégal",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[500],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context)!
                        .translate("AboutScreenDocumentsAvailableSoon"),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
