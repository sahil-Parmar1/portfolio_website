import 'package:flutter/material.dart';

class  ProfileCart  extends StatelessWidget {
  const ProfileCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.all(50.0),
      child: Center(
        child: Container(
          //color: Colors.yellowAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image(image: AssetImage("assets/images/coder.webp"),
                width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              Text("Hi,I'm Sahil Parmar",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins",fontSize: 20),),
              SizedBox(height: 10,),
              ConstrainedBox(
                 constraints: BoxConstraints(
                   maxWidth: 500
                 ),
                  child: Text("Quick into about your Role at Company. List 3-4 skills that you enjoy,and maybe something quirky that isn’t related to your professional work.",style: TextStyle(fontSize: 18,fontFamily: "Poppins"),)),
            ],
          ),
        ),
      ),
    );
  }
}
