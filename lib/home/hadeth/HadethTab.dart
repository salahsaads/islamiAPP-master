import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c9_mon/home/hadeth/Hadeth.dart';
import 'package:islami_c9_mon/home/hadeth/HadethTitleWidget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Image.asset("assets/images/hadeth_header_image.png"),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4),
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 2))),
          child: Text(AppLocalizations.of(context)!.hadeth_number,
              style: Theme.of(context).textTheme.titleMedium),
        ),
        Expanded(
            child: allHadeth.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethTitleWidget(allHadeth[index]);
                    },
                    separatorBuilder: (buildContext, index) => Container(
                          color: Theme.of(context).colorScheme.secondary,
                          height: 2,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 32),
                        ),
                    itemCount: allHadeth.length))
      ],
    );
  }

  List<Hadeth> allHadeth = [];

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allAhadethList = fileContent.trim().split("#");
    for (int i = 0; i < allAhadethList.length; i++) {
      String singleHadeth = allAhadethList[i];
      List<String> hadethLines = singleHadeth.trim().split('\n');
      String title = hadethLines[0];
      hadethLines.remove(0); // remove title
      String content = hadethLines.join("\n");
      Hadeth hadeth = Hadeth(title, content);
      allHadeth.add(hadeth);
    }
    setState(() {});
  }
}
