import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturesListMobile extends StatefulWidget {
  @override
  _FeaturesListMobileState createState() => _FeaturesListMobileState();
}

class _FeaturesListMobileState extends State<FeaturesListMobile> {

  List screenshots = [
    'assets/AppCoach.png',
    'assets/AppWorkout.png',
    'assets/AppNutrition.png',
    'assets/AppGoals.png',
    'assets/Content.jpg',
  ];

  List features = [
    'Un health coach de confianza disponible para guiar y personalizar la experiencia de cada persona. Podrá planificar rutinas personalizadas, orientar en hábitos alimenticios y trabajar en conjunto para crear una versión más activa, saludable y productiva de cada uno',
    'Rutinas de entrenamiento de todo nivel para realizar en cualquier sitio. Desde rutinas de HIIT de 15 minutos para realizar en horario de almuerzo, hasta sesiones de stretching, yoga o entrenamientos para bajar de peso',
    'Recetas saludables para todo gusto. Mejora los hábitos alimenticios facilitando la planificación de comidas y explicando paso a paso cada receta para hacer en casa',
    'Crea y gestiona nuevos hábitos saludables, con la ayuda de tu coach, o de forma autónoma. Traza metas y logra metas significativas a largo plazo',
    'Creamos contenido que nos encanta compartir con todos, te enseñaremos cómo hacer un perfecto Squat, cómo empezar a meditar o incluso como ganar músculo bajo una dieta vegana. Contenido nuevo, cada semana en tu inbox'
  ];

  List featureTitles = [
    '1:1 Coaching',
    'Entrenamientos on-demand',
    'Mejor alimentación',
    'Crea hábitos saludables',
    'Contenido para todos'
  ];

  int selectedButton = 0;
  
  @override
  Widget build(BuildContext context) {

    final device = MediaQuery.of(context).size;

    return Column(
        children: [
          //Title
          Container(
            constraints: BoxConstraints(
              maxWidth: device.width * 0.5
            ),
            child: Text(featureTitles[selectedButton],
              style: GoogleFonts.montserrat(
                fontSize: 24, color: Colors.grey[800], fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          //Bttons and Image
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Buttons 1st
              Container(
                child: Column(
                  children: [
                    //1
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selectedButton = 0;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,                        
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (selectedButton == 0) ? Color(0xff00CE7C) : Colors.white,
                            border: Border.all(
                              color: (selectedButton == 0) ? Colors.white : Color(0xff706F6F), 
                              width: (selectedButton == 0) ? 0 : 1),                         
                          ),
                          child: Center(
                            child: Icon(
                              Icons.person,
                              color: (selectedButton == 0) ? Colors.white : Color(0xff706F6F),
                              ))
                            ),
                          )),
                    SizedBox(height: 20),
                    //2
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selectedButton = 1;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,                        
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (selectedButton == 1) ? Color(0xff00CE7C) : Colors.white,
                            border: Border.all(
                              color: (selectedButton == 1) ? Colors.white : Color(0xff706F6F), 
                              width: (selectedButton == 1) ? 0 : 1),                         
                          ),
                          child: Center(
                            child: Icon(
                              Icons.fitness_center,
                              color: (selectedButton == 1) ? Colors.white : Color(0xff706F6F),
                              ))
                            ),
                          )),
                    SizedBox(height: 20),
                    //3
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selectedButton = 2;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,                        
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (selectedButton == 2) ? Color(0xff00CE7C) : Colors.white,
                            border: Border.all(
                              color: (selectedButton == 2) ? Colors.white : Color(0xff706F6F), 
                              width: (selectedButton == 2) ? 0 : 1),                         
                          ),
                          child: Center(
                            child: Icon(
                              Icons.food_bank,
                              color: (selectedButton == 2) ? Colors.white : Color(0xff706F6F),
                              ))
                            ),
                          )),
                  ]
                ),
              ),
              //Image
              Container(
                height: device.width * 0.8,
                width: device.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(screenshots[selectedButton]),
                    fit: BoxFit.cover 
                  ),
                )
              ),
              //Buttons 2nd
              Container(
                child: Column(
                  children: [
                    //1
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selectedButton = 3;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,                        
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (selectedButton == 3) ? Color(0xff00CE7C) : Colors.white,
                            border: Border.all(
                              color: (selectedButton == 3) ? Colors.white : Color(0xff706F6F), 
                              width: (selectedButton == 3) ? 0 : 1),                         
                          ),
                          child: Center(
                            child: Icon(
                              Icons.today,
                              color: (selectedButton == 3) ? Colors.white : Color(0xff706F6F),
                              ))
                            ),
                          )),
                    SizedBox(height: 20),
                    //2
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selectedButton = 4;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,                        
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (selectedButton == 4) ? Color(0xff00CE7C) : Colors.white,
                            border: Border.all(
                              color: (selectedButton == 4) ? Colors.white : Color(0xff706F6F), 
                              width: (selectedButton == 4) ? 0 : 1),                         
                          ),
                          child: Center(
                            child: Icon(
                              Icons.fitness_center,
                              color: (selectedButton == 4) ? Colors.white : Color(0xff706F6F),
                              ))
                            ),
                          )),
                  ]
                ),
              ),
            ]
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: device.width * 0.7
            ),
            child: Text(features[selectedButton],
              style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black
              ),
            textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40)
        ]
      );
  }
}