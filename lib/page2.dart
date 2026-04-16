import 'package:flutter/material.dart'; 

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  elevation: 0,
  leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pop(context);
    },
  ),

  flexibleSpace: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/background.png"),
        fit: BoxFit.cover,
      ),
    ),
  ),
),

// body halaman kedua
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35),

            // profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/fotoprofil.jpg"),
            ),

            SizedBox(height: 10),

            Text(
              "Lunetta Latisha",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Halo! Saya Lunetta Latisha, seorang pelajar berusia 16 tahun dari SMK Wikrama. Saya memiliki ketertarikan dalam dunia teknologi, khususnya di bidang pemrograman. Saya senang belajar hal baru dan terus mengembangkan skill saya untuk menjadi developer yang handal.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Perjalanan Pendidikan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Perjalanan pendidikan saya dimulai dari sekolah dasar, dilanjutkan ke sekolah menengah pertama, dan kini saya sedang menempuh pendidikan di SMK Wikrama. Selama masa belajar, saya mulai tertarik dengan dunia teknologi dan terus berusaha mengembangkan kemampuan saya di bidang tersebut.",
                  ),
              
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                    ),
                    child: Text(
                      "Skill",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  buildSkillItem("HTML"),
                  buildSkillItem("CSS"),
                  buildSkillItem("Javascript"),
                  buildSkillItem("Flutter"),
                  buildSkillItem("C++"),
                ],
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
        ),
      ),
    );
  }

  // item skill
  Widget buildSkillItem(String title) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
      ),
      child: Text(title),
    );
  }
}