import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marslandingpage/launchMail.dart';

class ContactUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    if(MediaQuery.of(context).size.width > 1200) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Text + button
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.35),
                child: Text(
                  '¿Quisieras ver a tu equipo más felíz y productivo?',
                  style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700]),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              //Text
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.35),
                child: Text(
                  'Contáctanos si te interesa llevar una nueva y personalizada experiencia a tu equipo. Con gusto crearemos en conjunto un lugar aún mejor para trabajar',
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              //Button
              LaunchMail().contactButton()
            ],
          ),
          SizedBox(width: 25),
          //Image
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ContactUs.jpg'),
                  fit: BoxFit.fitWidth),
            ),
          ),
        ]);
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Image
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ContactUs.jpg'),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SizedBox(height: 20),
          //Text + button
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            child: Text(
              '¿Quisieras ver a tu equipo más felíz y productivo?',
              style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          //Text
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            child: Text(
              'Contáctanos si te interesa llevar una nueva y personalizada experiencia a tu equipo. Con gusto crearemos en conjunto un lugar aún mejor para trabajar',
              style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          //Button
          LaunchMail().contactButton(),
          SizedBox(height: 30),          
        ]);
    }
  }
}
