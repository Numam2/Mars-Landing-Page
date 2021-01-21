import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marslandingpage/desktop/contactus.dart';
import 'package:marslandingpage/desktop/introContainer.dart';
import 'package:marslandingpage/mobile/featuresListMobile.dart';
import 'package:marslandingpage/mobile/pricingMobile.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final device = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
          //Video + Main Container
          IntroContainer(),
          //White container
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 35),
                //Title
                Container(
                  constraints: BoxConstraints(maxWidth: device.width *0.8),
                  child: Text(
                    'UN HEALTH COACH EN EL BOLSILLO',
                    style: GoogleFonts.montserrat(
                      fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                //Subtitle
                Container(
                  constraints: BoxConstraints(maxWidth: device.width *0.8),
                  child: Text(
                    'Para las organizaciones que genuinamente se interesan por el bienestar físico de sus empleados, buscamos personalizar la experiencia y acompañar a cada persona en su camino a un estilo de vida mas saludable',
                    style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 50),
                //1
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Icon
                    Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Productivity.jpg'), 
                          fit: BoxFit.fitHeight
                        ),                              
                      ),
                    ),
                    SizedBox(height: 20),
                    //Text
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: device.width * 0.75
                      ),
                      child: Text('Aumenta la retención y productividad',
                        style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey[700]
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      constraints: BoxConstraints(maxWidth: 300),
                      child: Text(
                        'Empleados activos son empleados mas felices con su vida y más fieles a su trabajo',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    )
                ],),
                SizedBox(height: 20),
                //2
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Icon
                    Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Absentism.jpg'), 
                          fit: BoxFit.fitHeight
                        ),                              
                      ),
                    ),
                    SizedBox(height: 20),
                    //Text
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: device.width * 0.75
                      ),
                      child: Text('Reduce el absentismo',
                        style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey[700]
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      constraints: BoxConstraints(maxWidth: 300),
                      child: Text(
                        'Su bienestar importa hoy mas que nunca, ayúdalos a estar saludables y a dar lo mejor de cada uno',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    )
                ],),                    
                SizedBox(height: 20),
                //3
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Icon
                    Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Healthcare.jpg'), 
                          fit: BoxFit.fitHeight
                        ),                              
                      ),
                    ),
                    SizedBox(height: 20),
                    //Text
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: device.width * 0.75
                      ),
                      child: Text('Reduce costos médicos',
                        style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey[700]
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      constraints: BoxConstraints(maxWidth: 300),
                      child: Text(
                        'La salud de tu equipo es una inversión a largo plazo. Con un estilo de vida saludable podemos prevenir enfermedades crónicas', 
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    )
                ],),
                SizedBox(height: 40),
              ],
            ),
          ),
          //Features
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: FeaturesListMobile()
          ),
          //
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/pricing.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.grey[800], BlendMode.multiply),
              ),
            ),
            child: PricingMobile(),
          ),
          //Contact
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: ContactUs(),
          )
        ])
      )
    );
  }
}