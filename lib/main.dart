import 'package:flutter/material.dart';
import 'package:pr_1/componets/navigation_bar.dart';
import 'package:pr_1/componets/profile_cart.dart';
import 'package:pr_1/componets/project_cart.dart';
import 'package:pr_1/componets/skillset.dart';


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
                child: NavigationBar_template(constraints: constraint),
              ),
            ),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1000
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileCart(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text("Projects",style: TextStyle(fontFamily: "Poppins",fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    ProjectCart(),
                    ProjectCart(),
                    ProjectCart(),
                    Skillset()
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
