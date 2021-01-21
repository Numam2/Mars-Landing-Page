import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marslandingpage/desktop/benefits.dart';
import 'package:marslandingpage/desktop/contactus.dart';
import 'package:marslandingpage/desktop/featuresList.dart';
import 'package:marslandingpage/desktop/introContainer.dart';
import 'package:marslandingpage/desktop/pricing.dart';

class HomeDesk extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final device = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children:[
          //Video + Main Container
          IntroContainer(),
          //White container
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 75),
                //Title
                Container(
                  constraints: BoxConstraints(maxWidth: device.width *0.75),
                  child: Text(
                    'UN HEALTH COACH EN EL BOLSILLO',
                    style: GoogleFonts.montserrat(
                      fontSize: 35, fontWeight: FontWeight.w600, color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 25),
                //Subtitle
                Container(
                  constraints: BoxConstraints(maxWidth: device.width *0.6),
                  child: Text(
                    'Para las organizaciones que genuinamente se interesan por el bienestar físico de sus empleados, buscamos personalizar la experiencia y acompañar a cada persona en su camino a un estilo de vida mas saludable',
                    style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 50),
                //Icons
                Benefits(),
              ],
            ),
          ),
          //Features
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: FeaturesList()
          ),
          SizedBox(height: 25),
          //Pricing
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 35),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/pricing.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.grey[800], BlendMode.multiply),
              ),
            ),
            child: Pricing(),
          ),
          SizedBox(height: 25),
          //Contact
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(35),
            color: Colors.white,
            child: ContactUs(),
          )
        ])
      )
    );
  }
}