import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

import 'Widgets/bottom_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0), //appbar size
          child: AppBar(
            bottomOpacity: 0.0,
            elevation: 0.0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white10,

            //appbar bg color
            leading: Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
              ),
              child: SizedBox(
                height: size.width * 0.1,
                width: size.width * 0.1,
                child: Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white, //icon bg color
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: Icon(
                    UniconsLine.bars,
                    color: Colors.black, //icon bg color
                    size: size.height * 0.025,
                  ),
                ),
              ),
            ),
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            leadingWidth: size.width * 0.15,
            title: Text("",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                )),



            centerTitle: true,
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  right: size.width * 0.05,
                ),
                child: SizedBox(
                  height: size.width * 0.1,
                  width: size.width * 0.1,
                  child: Container(
                    decoration: const BoxDecoration(
                      //color:Colors.white, //icon bg color
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Icon(
                      UniconsLine.toggle_on,
                      color: Colors.black,
                      size: size.height * 0.025,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: buildBottomNavBar(1, size),


        body:
          Padding(
            padding: const EdgeInsets.only(top:100.0),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                          children:[ Padding(
                            padding: const EdgeInsets.only(left:32.0),
                            child: Text("Choose Speaker",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.bold,
                        ),),
                          )]),
                   Center(

                        child: SizedBox(
                          height: size.height*0.55,
                          width: size.width*0.95,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top:20.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      new Image.asset("assets/images/BOSE.png",scale: 1.96,),
                                       Padding(
                                         padding: const EdgeInsets.all(0.0),
                                         child: Text("Smart Speaker",
                                           textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: size.width * 0.06,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                       ),
                                      Text("With Voice Control",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: size.width * 0.04,
                                          fontWeight: FontWeight.normal,
                                        ),),

                                    ]

                                ),
                              ),

                              decoration: BoxDecoration(
                                color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                              BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                            ], ),


      ),

                          ),
                        ),

                   ),
                      Row(
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(left:30.0),
                           child: Text("Popular",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: size.width * 0.06,
                              fontWeight: FontWeight.bold,
                            ),),
                         ),



                     ]

                      ),
                      SizedBox(
                        height: size.height*0.55,
                        width: size.width*0.95,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: size.height*0.2,
                                    width: size.width*0.4,
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top:20.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                new Image.asset("assets/images/Apple3.png"),
                                                ]

                                          ),
                                        ),
                                      ),

                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ], ),


                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: size.height*0.2,
                                    width: size.width*0.4,
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top:20.0),
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              new Image.asset("assets/images/Apple2.png"),


                                            ]

                                        ),
                                      ),

                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ], ),


                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    ),
              ),
            ),
          ),





    );
  }
}
