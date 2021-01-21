import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pricing extends StatelessWidget {

 Widget planContainer(List features, String title, int price, bool featured, int deviceWidth){
    return Container(
      constraints: BoxConstraints(
        maxWidth: deviceWidth * 0.25
      ),
      padding: EdgeInsets.all(35),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          //Title
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: featured ? 24 : 18, fontWeight: featured ? FontWeight.w600 : FontWeight.w500, color: featured ? Colors.grey[800] : Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          //Features
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 20),
            width: featured ? deviceWidth * 0.27 : deviceWidth * 0.22,
            child: ListView.builder(
              itemCount: features.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(children: [
                    //Icon
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                            color: Colors.grey[350],
                            offset: new Offset(0.0, 3.0),
                            blurRadius: 5.0,
                          )]
                        ),
                      child: Icon(Icons.add,
                        color: Colors.black,
                        size: 15),
                    ),
                    SizedBox(width: 15.0),
                    //Text
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: deviceWidth * 0.15,
                      ),
                      child: Text(
                        features[index],
                        style: GoogleFonts.montserrat(
                          fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    )
                  ]),
                );
              },
            ),
          ),
          SizedBox(height: 15),
          //Price
          Text(
            '\$$price',
            style: GoogleFonts.montserrat(
              fontSize: featured ? 24 : 18, fontWeight: featured ? FontWeight.w600 : FontWeight.w500, color: featured ? Colors.grey[800] : Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'usuario activo / mes',
            style: GoogleFonts.montserrat(
              fontSize: featured ? 16 : 12, fontWeight: FontWeight.w400, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final device = MediaQuery.of(context).size;

    if (device.width > 1200){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          planContainer(
            ['Entrenamientos y rutinas de ejercicio ilimitados', 'Sesiones de Yoga y meditación ilimitados','Acceso a todas las recetas', 'Soporte técnico y administrativo personalizado'],
            'WELLNESS APP',
            420,
            false,
            MediaQuery.of(context).size.width.toInt()
          ),
          SizedBox(width: 20),
          planContainer(
            ['Todo lo incluído en Wellness App','Personal Wellness Coach 24/7', 'Rutinas personalizadas', 'Newsletter semanal', 'HR Admin Portal (próximamente)'],
            'PERSONALIZED WELLNESS EXPERIENCE',
            2140,
            true,
            MediaQuery.of(context).size.width.toInt()
          ),
        ]);
    }
    else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          planContainer(
            ['Entrenamientos y rutinas de ejercicio ilimitados', 'Sesiones de Yoga y meditación ilimitados','Acceso a todas las recetas', 'Soporte técnico y administrativo personalizado'],
            'WELLNESS APP',
            420,
            false,
            (MediaQuery.of(context).size.width * 1.5).round()
          ),
          SizedBox(height: 20),
          planContainer(
            ['Todo lo incluído en Wellness App','Personal Wellness Coach 24/7', 'Rutinas personalizadas', 'Newsletter semanal', 'HR Admin Portal (próximamente)'],
            'PERSONALIZED WELLNESS EXPERIENCE',
            2140,
            false,
            (MediaQuery.of(context).size.width * 1.5).round()
          ),
        ]);
    }
  }
}