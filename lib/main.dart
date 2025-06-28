import 'package:flutter/material.dart';
import 'package:pr_1/componets/bottombar.dart';
import 'package:pr_1/componets/navigation_bar.dart';
import 'package:pr_1/componets/profile_cart.dart';
import 'package:pr_1/componets/project_cart.dart';
import 'package:pr_1/componets/skillset.dart';
import 'package:flutter/cupertino.dart';

void main ()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  scrollBehavior:NoScrollbarScrollBehavior(),
  home: MyApp(),));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController _scrollController = ScrollController();
  bool _showScrollToTopButton = false;
  @override
  void initState()
  {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 0  && !_showScrollToTopButton)
      {
        // Show the button if we're not at the top
        setState(() => _showScrollToTopButton = true);
      } else if (_scrollController.offset <= 0 && _showScrollToTopButton)
      {
        // Hide the button if we're back at the top
        setState(() => _showScrollToTopButton = false);
      }
    });
  }
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
                controller: _scrollController,
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
                    Skillset(),
                    Bottombar_template(constraints: constraint),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: _showScrollToTopButton?GestureDetector(
            onTap: (){
              _scrollController.animateTo(
                0.0,                                // 🔼 Scroll to top (offset 0)
                duration: Duration(milliseconds: 500),
                curve: Curves.bounceOut,
              );
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0),
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(3, 3)
                  )
                ]
              ),
              child: Icon(CupertinoIcons.up_arrow),
            ),
          ):SizedBox.shrink(),
        );
      }
    );
  }
}


class NoScrollbarScrollBehavior extends ScrollBehavior {
  @override
  Widget buildScrollbar(BuildContext context, Widget child, ScrollableDetails details) {
    return child; // Hides the scrollbar
  }

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child; // Removes the overscroll glow
  }
}
