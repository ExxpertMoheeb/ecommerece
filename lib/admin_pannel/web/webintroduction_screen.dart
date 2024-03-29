import 'package:ecommerece/admin_pannel/mobile_admin_pannel/mobile_admin_Loginscreen.dart';
import 'package:ecommerece/clipper/baziar.dart';
import 'package:ecommerece/mobile_app/pages/introduction_screen.dart';
import 'package:ecommerece/them_data.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'web_admin_Loginscreen.dart';
class WebIntroductionScreen extends StatefulWidget {
  @override
  _WebIntroductionScreenState createState() => _WebIntroductionScreenState();
}

class _WebIntroductionScreenState extends State<WebIntroductionScreen> {
  var height, width;
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return width<600? IntroductionScreen(): Scaffold(
        body: SizedBox(
            height: height,
            width: width,
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          // color: Colors.amber,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/ok.jpg'))),
                      height: height,
                      width: width,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipPath(
                        clipper: Baziar(),
                        child: Container(
                          height: height * 0.4,
                          width: width,
                          color: MyThemeClass.primaryColor,
                          child: Padding(
                            padding: EdgeInsets.only(top: height * 0.05),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.05,
                                  width: width * 0.2,
                                  // color: Colors.green,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: MyThemeClass.secoundryColor,
                                            shape: BoxShape.circle),
                                        height: height * 0.02,
                                        width: width * 0.04,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    MyThemeClass.secoundryColor,
                                                width: width * 0.002),
                                            // color: Colors.black,
                                            shape: BoxShape.circle),
                                        height: height * 0.02,
                                        width: width * 0.04,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    MyThemeClass.secoundryColor,
                                                width: width * 0.002),
                                            // color: Colors.black,
                                            shape: BoxShape.circle),
                                        height: height * 0.02,
                                        width: width * 0.04,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                  width: width,
                                  // color: Color(0xffD79558),
                                  child: Center(
                                      child: Text(
                                    'SIGN UP LUXURY',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                       // fontSize: width * 0.085,
                                        color: MyThemeClass.secoundryColor),
                                  )),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                  width: width * 0.9,
                                  // color: Colors.pink,
                                  child: Text(
                                    'From Cuasal to Dress,\nWe Have The '
                                    'Size and Width You Need',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //  fontSize: width * 0.04,
                                        color: MyThemeClass.secoundryColor),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      controller.animateToPage(index + 1,
                                          duration:
                                              const Duration(milliseconds: 400),
                                          curve: Curves.easeInOut);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyThemeClass.secoundryColor,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15))),
                                      height: height * 0.05,
                                      width: width * 0.25,
                                      child:const Center(
                                          child: Text(
                                        'Next',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            //fontSize: width * 0.04
                                            ),
                                      )),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    addDataToSf();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>width>600?
                                                WebAdminLogin():MobileAdminLogin()));
                                  },
                                  child: SizedBox(
                                    height: height * 0.06,
                                    width: width * 0.3,
                                    // color: Colors.pink,
                                    child: Center(
                                        child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: MyThemeClass.secoundryColor,
                                          fontWeight: FontWeight.bold
                                          //fontSize: width * 0.04
                                          ),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ////////////////////////////////////////////////////////////////
             //  SizedBox(height: height*0.1,),
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          // color: Colors.amber,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/hafeez.jpg'))),
                      height: height,
                      width: width,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipPath(
                        clipper: Baziar(),
                        child: Container(
                          height: height * 0.46,
                          width: width,
                          color: MyThemeClass.primaryColor,
                          child: Padding(
                            padding: EdgeInsets.only(top: height * 0.04),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.07,
                                  width: width * 0.2,
                                  // color: Colors.green,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: height * 0.02,
                                        width: width * 0.04,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    MyThemeClass.secoundryColor,
                                                width: width * 0.003),
                                            // color: Colors.black,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        height: height * 0.02,
                                        width: width * 0.04,
                                        decoration: BoxDecoration(
                                            color: MyThemeClass.secoundryColor,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        height: height * 0.02,
                                        width: width * 0.04,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    MyThemeClass.secoundryColor,
                                                width: width * 0.003),
                                            // color: Colors.black,
                                            shape: BoxShape.circle),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: height * 0.04,
                                  width: width * 0.9,
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    'ELEGENT MEN\nFORMAL SHOES',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                       // fontSize: width * 0.02,
                                        color: MyThemeClass.secoundryColor),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                  width: width * 0.9,
                                  // color: Colors.pink,
                                  child: Center(
                                    child: Text(
                                      'Free Shipping and Returns and More offers\nAvailable Our online store',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                       //   fontSize: width * 0.02,
                                          color: MyThemeClass.secoundryColor),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height*0.08,),
                                Padding(
                                  padding:  EdgeInsets.only(top: height*0.01),
                                  child: InkWell(
                                    onTap: () {
                                      controller.animateToPage(index + 2,
                                          duration:
                                              const Duration(milliseconds: 400),
                                          curve: Curves.easeInOut);
                                    },
                                    child: Container(
                                      height: height * 0.08,
                                      width: width * 0.25,
                                      decoration: BoxDecoration(
                                          color: MyThemeClass.secoundryColor,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Center(
                                          child: Text(
                                        'Next',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.03
                                            ),
                                      )),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    addDataToSf();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                width>600?
                                                WebAdminLogin():MobileAdminLogin()));
                                  },
                                  child: SizedBox(
                                    height: height * 0.06,
                                    width: width * 0.3,
                                    // color: Colors.pink,
                                    child: Center(
                                        child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: MyThemeClass.secoundryColor,
                                          fontSize: width * 0.025
                                          ),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ///////////////////////////////////////////////////////////////////////////
                Stack(
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: const BoxDecoration(
                          // color: Colors.amber,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/okii.jpg'))),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipPath(
                        clipper: Baziar(),
                        child: Container(
                          height: height * 0.5,
                          width: width,
                          color: MyThemeClass.primaryColor,
                          child: Padding(
                            padding: EdgeInsets.only(top: height * 0.05),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.07,
                                  width: width * 0.2,
                                  // color: Colors.green,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    MyThemeClass.secoundryColor,
                                                width: width * 0.003),
                                            // color: Colors.black,
                                            shape: BoxShape.circle),
                                        height: height * 0.02,
                                        width: width * 0.04,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    MyThemeClass.secoundryColor,
                                                width: width * 0.003),
                                            // color: Colors.black,
                                            shape: BoxShape.circle),
                                        height: height * 0.02,
                                        width: width * 0.04,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: MyThemeClass.secoundryColor,
                                            shape: BoxShape.circle),
                                        height: height * 0.02,
                                        width: width * 0.04,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.1,
                                  width: width,
                                  // color: Color(0xffD79558),
                                  child: Center(
                                      child: Text(
                                    'Quality Comfort Shoes',
                                    style: TextStyle(
                                        fontSize: width * 0.02,
                                        color: MyThemeClass.secoundryColor),
                                  )),
                                ),
                                SizedBox(
                                  height: height * 0.11,
                                  width: width * 0.8,
                                  // color: Colors.pink,
                                  child: Text(
                                    'Shop the latest Shoes on the Worlds Largest Shoes stor',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: width * 0.02,
                                        color: MyThemeClass.secoundryColor),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      addDataToSf();
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  width>600?
                                                WebAdminLogin():MobileAdminLogin()));
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xffD79558),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      height: height * 0.08,
                                      width: width * 0.25,
                                      child: Center(
                                          child: Text(
                                        'Login',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.03
                                            ),
                                      )),
                                    ),
                                  ),
                                ),
                                // InkWell(
                                //   onTap: () {
                                //     Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //           builder: (context) => HomePage(),
                                //         ));
                                //   },
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //         border: Border.all(
                                //           color: MyThemeClass.secoundryColor,
                                //         ),
                                //         // color: Color(0xffD79558),
                                //         borderRadius: BorderRadius.all(
                                //             Radius.circular(15))),
                                //     height: height * 0.05,
                                //     width: width * 0.25,
                                //     // color: Colors.pink,
                                //     child: Center(
                                //         child: Text(
                                //       'Home',
                                //       style: TextStyle(
                                //         fontSize: width * 0.04,
                                //         fontWeight: FontWeight.bold,
                                //         color: MyThemeClass.secoundryColor,
                                //       ),
                                //     )),
                                //   ),
                                // )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
  addDataToSf() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('introValue', true);
  }
}
