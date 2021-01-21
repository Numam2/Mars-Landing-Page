import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marslandingpage/launchMail.dart';

class IntroContainer extends StatefulWidget {
  @override
  _IntroContainerState createState() => _IntroContainerState();
}

class _IntroContainerState extends State<IntroContainer> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 750) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/IntroImage.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.grey[600], BlendMode.multiply),
              ),
            ),
            child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                //Logo
                Container(
                  height: 150,                  
                  child: Image(
                      image: AssetImage('assets/Brand/White Logo.png'),
                    ),
                ),
                SizedBox(height: 20),
                //Main text
                Text('TRANSFORMAMOS',
                  style: GoogleFonts.lato(
                    color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500
                  )
                ),
                SizedBox(height: 10),
                Text('CULTURAS DE SALUD',
                  style: GoogleFonts.lato(
                    color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500
                  )
                ),
                SizedBox(height: 10),
                Text('Y BIENESTAR CORPORATIVO',
                  style: GoogleFonts.lato(
                    color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500
                  )
                ),
                SizedBox(height: 30),
                LaunchMail().contactButton(),
                //Secondary text
              ]
            )
              )
          );
        } else {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/IntroImage.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.grey[600], BlendMode.multiply),
              ),
            ),
            child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                //LOGO
                Container(
                  width: 175,
                  child: Image(
                    image: AssetImage('assets/Brand/White Logo.png'),
                  )
                ),
                //Main text
                Text('TRANSFORMAMOS CULTURAS',
                  style: GoogleFonts.lato(
                    color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500
                  )
                ),
                SizedBox(height: 10),
                Text('DE SALUD Y BIENESTAR CORPORATIVO',
                  style: GoogleFonts.lato(
                    color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500
                  )
                ),
                SizedBox(height: 20),
                LaunchMail().contactButton(),
                SizedBox(height: 100),
              ]
            )
              )
          );
        }
      },
    );

    
  }
}