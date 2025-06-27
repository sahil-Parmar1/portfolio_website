import 'package:flutter/material.dart';

class Bottombar_template extends StatelessWidget {
  BoxConstraints constraints;
  Bottombar_template({required this.constraints,super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Frist last",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.bold,fontSize: 20),),

          //show only when the screen size is not phone
          if(constraints.maxWidth > 600)
            Row(
              children: [
                Text("Contect",style: TextStyle(fontFamily: "Poppins"),),
                SizedBox(width: 10,),
                Text("Contect",style: TextStyle(fontFamily: "Poppins"),),
                SizedBox(width: 110,)
              ],
            )
          else
            Row(
              children: [
                Text("Contect",style: TextStyle(fontFamily: "Poppins"),),
                SizedBox(width: 110,)
              ],
            )
        ],
      ),
    );
  }
}
