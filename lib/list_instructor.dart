import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surfinstructors/instructor_detail.dart';
import 'package:surfinstructors/models/instructor.dart';

class ListInstructorsPage extends StatefulWidget {
  @override
  _ListInstructorsPageState createState() => _ListInstructorsPageState();
}

class _ListInstructorsPageState extends State<ListInstructorsPage> {
  final instructors = allInstructors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6ED),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: null,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: <Widget>[
                Text('Santa Monica, CA',
                    style: GoogleFonts.tinos(
                        fontSize: 25.0, fontWeight: FontWeight.w500)),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: null,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text('Best Surfing Instructors in Santa Monica, California!',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5E5B54))),
          ),
          Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      IconButton(icon: Icon(Icons.search), onPressed: null),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5E5B54)),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.filter_list), onPressed: null),
                ),
              )),
          Container(
              height: MediaQuery.of(context).size.height - 200.0,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                childAspectRatio: 0.67,
                primary: false,
                children: <Widget>[
                  ...instructors.map((e) {
                    return buildInstructorGrid(e);
                  }).toList()
                ],
              ))
        ],
      ),
    );
  }

  buildInstructorGrid(Instructor instructor) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => InstructorDetails(selectedInstructor: instructor)
          ));
        },
        child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 150.0, width: 100.0, color: Colors.transparent),
                Positioned(
                    left: 30.0,
                    top: 65.0,
                    child: Container(
                        height: 30.0,
                        width: 40.0,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 7.0,
                              color: Colors.grey.withOpacity(0.75),
                              offset: Offset(5, 25),
                              spreadRadius: 12.0)
                        ]))),
                Positioned(
                    left: 12.0,
                    top: 15.0,
                    child: Hero(
                        tag: instructor.instructorPic,
                        child: Container(
                            height: 110.0,
                            width: 85.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                image: DecorationImage(
                                    image: AssetImage(instructor.instructorPic),
                                    fit: BoxFit.cover))))),
                Positioned(
                    left: 22.0,
                    top: 138.0,
                    child: Column(
                      children: <Widget>[
                        Text(instructor.instructorName,
                            style: GoogleFonts.sourceSansPro(fontSize: 12.0)),
                        Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.grey.withOpacity(0.5),
                            size: 15.0,
                          ),
                          SizedBox(width: 3.0),
                          Text(instructor.rating,
                              style: GoogleFonts.sourceSansPro(fontSize: 11.0))
                        ])
                      ],
                    ))
              ],
            )));
  }
}
