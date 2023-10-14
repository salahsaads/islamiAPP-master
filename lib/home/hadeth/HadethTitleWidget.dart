import 'package:flutter/material.dart';
import 'package:islami_c9_mon/hadethDetails/HadethDetailsScreen.dart';
import 'package:islami_c9_mon/home/hadeth/Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.titleSmall,
          )),
    );
  }
}
