import 'package:flutter/material.dart';

class NavigationBar_template extends StatelessWidget {
  BoxConstraints constraints;
  NavigationBar_template({required this.constraints,super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Frist last",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.bold),),

        //show only when the screen size is not phone
        if(constraints.maxWidth > 600)
          Row(
            children: [
              Text("case study",style: TextStyle(fontFamily: "Poppins"),),
              SizedBox(width: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25)
                  ),
                  onPressed: (){}, child: Text("check out get in",style: TextStyle(color: Colors.white,fontFamily: "Poppins"),))
            ],
          )
        else
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),
      ],
    );
  }
}
