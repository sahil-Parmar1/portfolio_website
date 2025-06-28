import 'package:flutter/cupertino.dart';

class Paragraph extends StatelessWidget {
  const Paragraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              constraints: BoxConstraints(
                  maxWidth: 600
              ),
              child: Text("The first paragraph of your project is often the harded part to write ,so don’t be agraid to do it last/ This is your chance to further hook your readers/while also recapping the project for those who can’t read the entire page. ",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),)),


        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            constraints: BoxConstraints(
                maxWidth: 600
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                bulletPoint("First item"),
                bulletPoint("Second item with more text to wrap."),
                bulletPoint("Third item"),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              constraints: BoxConstraints(
                  maxWidth: 600
              ),
              child: Text("The first paragraph of your project is often the harded part to write ,so don’t be agraid to do it last/ This is your chance to further hook your readers/while also recapping the project for those who can’t read the entire page. ",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),)),


        ),
      ],
    );
  }
  Widget bulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("• ", style: TextStyle(fontSize: 25)),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
