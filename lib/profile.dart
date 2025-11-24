import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.black,

    appBar: PreferredSize(
      preferredSize: Size.fromHeight(65),

      child: Padding(
        padding: EdgeInsets.all(7),

        child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),

            child: AppBar(
              title: Text(
                "Perfil",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ), 
                ),
              backgroundColor: const Color.fromARGB(20, 255, 255, 255),
              elevation: 0,
            ),
          ),
        ),
    ),

    body: SingleChildScrollView(
      child: Column(
        children: [
            //Foto de perfil y Nombre de usuario
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20, horizontal: 50
                ),
                margin: EdgeInsets.only(top: 20),

                decoration: BoxDecoration(
                  color: const Color.fromARGB(20, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color.fromARGB(70, 91, 2, 173),
                    width: 2
                  )

                ),

                // Foto de perfil
                child: Column(
                  children: [
                    ClipRRect( 
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),

                    child: Image.asset(
                      'assets/gojo.jpeg',
                      height: 200,
                      width: 200,
                    )
                  ),

                  //Nombre de usuario y @
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                    "Nikorasu",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  ),

                  Text(
                    "@nikorasu985",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(190, 185, 120, 247),
                    ),
                  ),
                  ],
                ),
              ),
            )
        ],
      ),
    )
   );
  }
}