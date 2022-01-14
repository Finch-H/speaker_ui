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
          Center(
            child: SizedBox(
              height: size.height*0.5,
              width: size.width*0.8,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
      ),
              ),
            ),
          )

    );
  }
}
