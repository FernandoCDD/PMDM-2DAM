import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE62F16),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/path_logo.png'),
                  const Text(
                    "Beautiful, Private Sharing",
                    style: TextStyle(
                      color: Color.fromARGB(255, 228, 149, 149),
                      fontSize: 20
                    ),
                  ),                 
                ],
              ),   
            ),

            const SizedBox(
              height: 200,
            ),  

            ElevatedButton(
              onPressed: (){},          
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(330, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  color: Color(0xFFE62F16),
                  fontSize: 20,
                  fontWeight: FontWeight.bold               
                ),
              )
            ),

            const SizedBox(
              height: 40,
            ),

            const Text(
              "Already have a Path account?",
              style: TextStyle(
                color: Color.fromARGB(255, 228, 149, 149),
                fontSize: 20
              ),
            ),

            ElevatedButton(
              onPressed: (){},          
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE62F16),
                fixedSize: const Size(330, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Color.fromARGB(255, 228, 149, 149))
                )
              ),
              child: const Text(
                "Log In",
                style: TextStyle(
                  color: Color.fromARGB(255, 228, 149, 149),
                  fontSize: 20,
                  fontWeight: FontWeight.bold               
                ),
              )
            ),

            const SizedBox(
              height: 20,
            ),
        ],    
      ),  
    );
  }
}
