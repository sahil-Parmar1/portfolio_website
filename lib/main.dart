import 'package:flutter/material.dart';


void main ()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraint) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Align(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 1000
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Frist last",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.bold),),

                    //show only when the screen size is not phone
                    if(constraint.maxWidth > 600)
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
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
