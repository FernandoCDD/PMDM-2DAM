import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Título', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.lightBlue[600]
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: Card(
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(25),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children:[
                    Container(
                      padding: const EdgeInsets.only(right: 205, top: 10),
                      child: const Text('Tortilla de Patatas',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                      Ratingz
                    ),                 
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzQUtYTfxp_QXaNXVoIAp4e0u_NX7VLlQYPw&usqp=CAU',),                         
                  ],
                ),
              ),
            ),
          )
        ], 
      ),
    );
  }
}

/*
children: const[
          SizedBox(
            height: 150,
            child: Card(
              child: SizedBox(
                width: 300,
                height: 200,
                child: Center(
                  child: Image(image: NetworkImage('https://cdn.recetasderechupete.com/wp-content/uploads/2020/11/Tortilla-de-patatas-4.jpg'))
                ),
            
              ),
            
            ),
          )
        ],
*/
