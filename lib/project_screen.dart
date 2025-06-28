import 'package:flutter/material.dart';
import 'package:pr_1/componets/bottombar.dart';
import 'package:pr_1/componets/navigation_bar.dart';
import 'package:pr_1/componets/paragraph.dart';
import 'package:pr_1/componets/profile_cart.dart';
import 'package:pr_1/componets/project_cart.dart';
import 'package:pr_1/componets/skillset.dart';
import 'package:flutter/cupertino.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
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
            automaticallyImplyLeading: false,
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
            child: ConstrainedBox(constraints: BoxConstraints(
              maxWidth: 1000
            ),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(maxWidth: 1000),
                      height: constraint.maxWidth > 1000?400:300,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/project_2.jpg"),
                        fit: BoxFit.cover
                        )
                      ),
                      child:const Center(
                          child: Text("Project Titile",style: TextStyle(color: Colors.white,
                          fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),)),
                    ),
                  ),
                  Paragraph(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Projects",style: TextStyle(fontFamily: "Poppins",fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)),
                  ),
                  Column(
                    children: List.generate(3, (index){
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Container(
                                width: double.infinity,
                                constraints: const BoxConstraints(maxWidth: 900),
                                height: constraint.maxWidth > 1000?400:300,
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/project_2.jpg"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ),
                          ),
                          Paragraph(),
                        ],
                      );
                    }),
                  ),
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
