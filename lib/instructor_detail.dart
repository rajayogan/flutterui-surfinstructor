import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:surfinstructors/models/instructor.dart';

class InstructorDetails extends StatefulWidget {
  final Instructor selectedInstructor;

  InstructorDetails({this.selectedInstructor});

  @override
  _InstructorDetailsState createState() => _InstructorDetailsState();
}

class _InstructorDetailsState extends State<InstructorDetails> {
  

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.transparent
          ),
          Container(
            height: screenHeight - screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/surfing.jpg'),
                fit: BoxFit.cover
              )
            )
          ),
          Positioned(
            top: screenHeight - screenHeight /3 - 25.0,
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              height: screenHeight / 3 + 25.0,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.0),
                  Text(widget.selectedInstructor.instructorName,
                  style: GoogleFonts.tinos(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500
                  )
                  ),
                  SizedBox(height: 7.0),
                  Text('Santa Monica, CA',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5E5B54)
                  )
                  ),
                  SizedBox(height: 7.0),
                  Row(
                    children: <Widget>[
                      SmoothStarRating(
                        allowHalfRating: false,
                        starCount: 5,
                        rating: 4.0,
                        size: 15.0,
                        color: Color(0xFFF36F32),
                        borderColor: Color(0xFFF36F32),
                        spacing:0.0
                      ),
                      SizedBox(width: 3.0),
                        Text('4.7',
                          style: GoogleFonts.sourceSansPro(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFD57843)
                                )
                        ),
                        SizedBox(width: 3.0),
                        Text('(200 Reviews)',
                          style: GoogleFonts.sourceSansPro(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFC2C0B6)
                                )
                        )
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text('Hello, My name is Cora ! I am from Santa Monica, California. I have more than 10 years of experience as a surf instructor and would love to help you...',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF201F1C)
                    )
                  ),
                  SizedBox(height: 5.0),
                  Text('Read More',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFF36F32)
                    )
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 150.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '200',
                              style: GoogleFonts.tinos(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500
                              )
                            ),
                            Text(
                              'Reviews',
                              style: GoogleFonts.sourceSansPro(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF5E5B54)
                              )
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '4',
                              style: GoogleFonts.tinos(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500
                              )
                            ),
                            Text(
                              'Programs',
                              style: GoogleFonts.sourceSansPro(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF5E5B54)
                              )
                            )
                          ],
                        )
                      ]
                    )
                  )
                ]
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFAF6ED),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))
              ),
            )
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 75.0,
              width: 100.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('>',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFF2D5)
                    )
                    ),
                    Text('Availability',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFF2D5)
                    )
                    )
                  ]
                )
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0)),
                color: Color(0xFFFE6D2E)
              ),
            )
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, top: 30.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFA4B2AE)
                ),
                child: Center(
                  child: Icon(Icons.arrow_back, size: 20.0, color: Colors.white)
                )
              )
            )
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, top: 30.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFA4B2AE)
                ),
                child: Center(
                  child: Icon(Icons.favorite_border, size: 20.0, color: Colors.white)
                )
              )
            )
          ),
          Positioned(
            top: (screenHeight - screenHeight / 3) / 2,
            left: (screenWidth /2) - 75.0,
            child: Container(
              height: 40.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: Color(0xFFA4B2AE),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Center(
                child: Text('Explore Programs',
                style: GoogleFonts.sourceSansPro(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                )
                )
              )
            )
          ),
          Positioned(
            top: screenHeight - screenHeight / 3 - 45.0,
            right: 25.0,
            child: Hero(
              tag: widget.selectedInstructor.instructorPic,
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.selectedInstructor.instructorPic),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15.0)
                )
              )
            )
          )
        ],
    )
    );
  }
}
