import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Benefits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final device = MediaQuery.of(context).size;

    if (device.width > 1000){

      return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
                    fit: BoxFit.fitHeight),
              ),
            ),
            SizedBox(height: 20),
            //Text
            Container(
              constraints: BoxConstraints(maxWidth: device.width * 0.2),
              child: Text(
                'Retención y productividad',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            Container(
              constraints: BoxConstraints(maxWidth: device.width * 0.2),
              child: Text(
                'Empleados activos son empleados mas felices con su vida y más fieles a su trabajo',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        SizedBox(width: 100),
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
                    fit: BoxFit.fitHeight),
              ),
            ),
            SizedBox(height: 20),
            //Text
            Container(
              constraints: BoxConstraints(maxWidth: device.width * 0.2),
              child: Text(
                'Reduce el absentismo',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            Container(
              constraints: BoxConstraints(maxWidth: device.width * 0.2),
              child: Text(
                'Su bienestar importa hoy mas que nunca, ayúdalos a estar saludables y a dar lo mejor de cada uno',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        SizedBox(width: 100),
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
                    fit: BoxFit.fitHeight),
              ),
            ),
            SizedBox(height: 20),
            //Text
            Container(
              constraints: BoxConstraints(maxWidth: device.width * 0.2),
              child: Text(
                'Reduce costos médicos',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            Container(
              constraints: BoxConstraints(maxWidth: device.width * 0.2),
              child: Text(
                'La salud de tu equipo es una inversión a largo plazo. Con un estilo de vida saludable podemos prevenir enfermedades crónicas', 
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ],
    );

    } else {

      return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //1
        Row(
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
                    fit: BoxFit.fitHeight),
              ),
            ),
            SizedBox(width: 20),
            //Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'Retención y productividad',
                    style: GoogleFonts.montserrat(
                        fontSize: 24, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'Empleados activos son empleados mas felices con su vida y más fieles a su trabajo',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            )            
          ],
        ),
        SizedBox(height: 50),
        //2
        Row(
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
                    fit: BoxFit.fitHeight),
              ),
            ),
            SizedBox(width: 20),
            //Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'Reduce el absentismo',
                    style: GoogleFonts.montserrat(
                        fontSize: 24, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'Su bienestar importa hoy mas que nunca, ayúdalos a estar saludables y a dar lo mejor de cada uno',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 50),
        //3
        Row(
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
                    fit: BoxFit.fitHeight),
              ),
            ),
            SizedBox(width: 20),
            //Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'Reduce costos médicos',
                    style: GoogleFonts.montserrat(
                        fontSize: 24, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'La salud de tu equipo es una inversión a largo plazo. Con un estilo de vida saludable podemos prevenir enfermedades crónicas', 
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            )            
          ],
        ),
      ],
    );
  }
  }
}
