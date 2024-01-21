import 'package:flutter/material.dart';
import 'package:gig_guide/Components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bulb.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Logo
          Icon(
            Icons.music_note_rounded,
            size:72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(height: 25,),

          //Title
          const Text(
            "Epic Gig Guide",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ), 
          const SizedBox(height: 10,),

          //Subtilte
          Text(
            "Where are we having fun today?",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary
              )
          ),

          const SizedBox(height: 25,),

          //button
          MyButton(
            name: Text(""),
            onTap: () => Navigator.pushNamed(context, '/Home_page'),
          child: Icon(Icons.arrow_forward, color: Theme.of(context).colorScheme.primary,), )
        ],
      ),
      ),  






       
    );
  }
}

