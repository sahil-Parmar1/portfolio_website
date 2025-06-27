import 'package:flutter/material.dart';

class Skillset extends StatelessWidget {
  Skillset({super.key});
  final List<Map<String, String>> skills = [
    {"name": "Flutter", "logo": "assets/logos/diamand.png"},
    {"name": "Figma", "logo": "assets/logos/flower.png"},
    {"name": "Firebase", "logo": "assets/logos/halfcircle.png"},
    {"name": "Git", "logo": "assets/logos/inchworm.png"},
    {"name": "Dart", "logo": "assets/logos/squish.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
       shrinkWrap: true,
          itemCount: 5,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
               mainAxisSpacing: 0,
              crossAxisSpacing: 0,
               childAspectRatio: 4,
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
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("$name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
       SizedBox(width: 8,),
       Image(image: AssetImage("$logo"),
       width: 25,
         height: 25,
       )
    ],
  );
}
