import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchMail {
  
  void launchMailto() async {
    final mailtoLink = Mailto(
      to: ['numaams@gmail.com'],
      subject: 'Interesante... Contame más',
      body:
          'Buenos días Numa! Mi nombre es XXXX de YYYYY compañia, me parece interesante la propuesta',
    );
    await launch('$mailtoLink');
  }

  Widget contactButton() {
    return Container(
      height: 35.0,
      child: RaisedButton(
        onPressed: launchMailto,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff00CE7C),
                Color(0xff0033A1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "CONTACTANOS",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

}
