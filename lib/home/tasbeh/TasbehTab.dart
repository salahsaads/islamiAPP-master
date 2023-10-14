// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/SettingsProvider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  List<String> tasbeh = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
    "صل علي النبي",
  ];
  int index = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {
          index = 0;
          counter = 0;
          setState(() {});
        },
        child: Text(
          'Rest',
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  calccounter();
                  angle += 0.50;
                });
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(settingsProvider.getSebhaHead()),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .085,
                        bottom: 20),
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset(settingsProvider.getSebhaBody())),
                  ),
                ],
              ),
            ),
            Text(
              AppLocalizations.of(context)!.sebha,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "$counter",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "${tasbeh[index]}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calccounter() {
    counter++;
    if (counter == 33 && index != 4) {
      index++;
      counter = 0;
    }
  }
}
