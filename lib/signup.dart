import 'package:flutter/material.dart';
import 'package:onboar/homepage.dart';
import 'package:onboar/main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  final controller = PageController();
  GlobalKey<FormState> keys = GlobalKey<FormState>();
  GlobalKey<FormState> secondkeys = GlobalKey<FormState>();
  GlobalKey<FormState> thirdkeys = GlobalKey<FormState>();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 200.0,
                      width: 200.0,
                      child: AlertDialog(
                        title: Text(
                          "Send your Qurey ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        content: SizedBox(
                          height: 200,
                          width: 300,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(helperMaxLines: 90),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Ok",
                                style: TextStyle(color: Colors.black),
                              ))
                        ],
                      ),
                    );
                  });
            },
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(44.0)),
              child: Center(
                child: Text(
                  "I",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          )
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: "hero")));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 34,
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 90,
        elevation: 0,
        title: SmoothPageIndicator(
          onDotClicked: (page) {
            controller.animateToPage(page,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          },
          controller: controller,
          count: 3,
          effect: WormEffect(
            dotHeight: 20,
            dotWidth: 50,
            dotColor: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: PageView(
          onPageChanged: (value) {
            setState(() {
              isLastPage = value == 2;
            });
          },
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            SingleChildScrollView(
              child: Container(
                child: Form(
                  key: keys,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 190,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Required";
                                }
                              },
                              decoration: InputDecoration(
                                  labelText: "First Name",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 190,
                            child: TextFormField(
                              // validator: (val) {
                              //   if (val!.isEmpty) {
                              //     return "Required";
                              //   }
                              // },
                              decoration: InputDecoration(
                                  labelText: "Middle Name",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 190,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Required";
                                }
                              },
                              decoration: InputDecoration(
                                  labelText: "Last  Name",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 190,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Required";
                                }
                              },
                              decoration: InputDecoration(
                                  labelText: "Enter Age",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      SizedBox(
                        height: 100,
                        width: 290,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Required";
                            }
                          },
                          decoration:
                              InputDecoration(hintText: "Enter your Gender"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 247, 245, 245),
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                      ),
                      SizedBox(
                        height: 80,
                        width: 330,
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Required";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0)),
                              hintText: "From Where you know about us"),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 80,
                        width: 330,
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Required";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0)),
                              hintText: "Enter Your Current Address"),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 80,
                        width: 330,
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Required";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0)),
                              hintText: "Enter Your Permanent  Address"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Thanks For Your Information",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 34),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "we will provide you best quality of services and we will all the staffs of this Sudan hospital make your Health Better ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image.asset(
                      "assets/recovery.webp",
                      height: 400,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: isLastPage
          ? TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: homepage()));
              },
              label: Text("Let's go"),
              icon: Icon(Icons.arrow_forward),
            )
          : Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(44.0),
              ),
              child: Center(
                  child: IconButton(
                      onPressed: () {
                        if (keys.currentState!.validate()) {
                          controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        }
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 23,
                      ))),
            ),
    );
  }
}
