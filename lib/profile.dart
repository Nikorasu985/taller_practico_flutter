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
                  color: Colors.white,
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
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                margin: EdgeInsets.only(top: 20),

                decoration: BoxDecoration(
                  color: const Color.fromARGB(20, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color.fromARGB(70, 91, 2, 173),
                    width: 2,
                  ),
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
                      ),
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
            ),

            SizedBox(height: 20),

            // Descripción
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Aprendiz del programa Tecnólogo en Análisis y Desarrollo de Software del SENA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            SizedBox(height: 20),

            // Íconos de Redes Sociales
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.code,
                    color: Colors.white,
                    size: 30,
                  ), // GitHub
                  onPressed: () {},
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.pink,
                    size: 30,
                  ), // Instagram
                  onPressed: () {},
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(
                    Icons.music_note,
                    color: Colors.cyan,
                    size: 30,
                  ), // Tiktok
                  onPressed: () {},
                ),
              ],
            ),

            SizedBox(height: 20),

            // Habilidades
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Habilidades",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(20),
              children: [
                _buildSkillButton("Flutter", Colors.blue),
                _buildSkillButton("HTML", Colors.orange),
                _buildSkillButton("CSS", Colors.blueAccent),
                _buildSkillButton("JS", Colors.yellow),
                _buildSkillButton("PHP", Colors.purple),
              ],
            ),

            // Proyectos GridView
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Proyectos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildProjectItem("Proyecto 1", "assets/p1.jpg"),
                  _buildProjectItem("Proyecto 2", "assets/p2.jpeg"),
                  _buildProjectItem("Proyecto 3", "assets/p3.jpg"),
                  _buildProjectItem("Proyecto 4", "assets/p4.jpg"),
                ],
              ),
            ),

            // Versión
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Versión 1.0",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillButton(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.black,
        ),
        onPressed: () {
          print("Habilidad: $text");
        },
        child: Text(text),
      ),
    );
  }

  Widget _buildProjectItem(String title, String imagePath) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                Container(color: Colors.grey[800]),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black54,
          ),
        ),
        Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
