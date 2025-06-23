import 'package:flutter/material.dart';

class Skillset extends StatelessWidget {
  Skillset({super.key});
  final List<Map<String, String>> skills = [
    {"name": "Flutter", "logo": "assets/logos/flutter.png"},
    {"name": "Figma", "logo": "assets/logos/figma.png"},
    {"name": "Firebase", "logo": "assets/logos/firebase.png"},
    {"name": "Git", "logo": "assets/logos/git.png"},
    {"name": "Dart", "logo": "assets/logos/dart.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
          itemCount: 5,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 4,
               mainAxisSpacing: 10,
              crossAxisSpacing: 10,
               childAspectRatio: 1
           ), itemBuilder: (context,index){
          final skill=skills[index];
            return skilltemple(skill["name"] ?? "default", skill["logo"]??"default");
      }),
    );
  }
}

Widget skilltemple(String name,String logo)
{
  return Row(
    children: [
      Text("$name"),
       Image(image: AssetImage("assets/icons/$logo"),
       width: 50,
         height: 50,
       )
    ],
  );
}
