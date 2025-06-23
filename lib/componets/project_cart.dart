import 'package:flutter/material.dart';

class ProjectCart extends StatelessWidget {
  const ProjectCart({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Container(
          child:screenWidth>600?Row(
            children: [
              Expanded(
                child: Image(image: AssetImage("assets/images/project_2.jpg"),
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Project Title",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins",fontSize: 20),),
                      SizedBox(height: 10,),
                      ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 500
                          ),
                          child: Text("A short project description designed to the info for project A short project description designed to the info for project A short project description designed to the info for project ",softWrap: true,style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500
                          ),)),
                      SizedBox(height: 10,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25)
                          ),
                          onPressed: (){}, child: Text("View",style: TextStyle(color: Colors.white,fontFamily: "Poppins"),))
                    ],
                  ),
                ),
              )
            ],
          ):Column(
            children: [
              Image(image: AssetImage("assets/images/project_2.jpg"),
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text("Project Title",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins",fontSize: 20),),
                    SizedBox(height: 10,),
                    ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: 500
                        ),
                        child: Text("A short project description designed to the info for project A short project description designed to the info for project A short project description designed to the info for project ",softWrap: true,style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500
                        ),)),
                    SizedBox(height: 10,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25)
                        ),
                        onPressed: (){}, child: Text("View",style: TextStyle(color: Colors.white,fontFamily: "Poppins"),))
                  ],
                ),
              )
            ],
          ),
      
       ),
    );
  }
}
