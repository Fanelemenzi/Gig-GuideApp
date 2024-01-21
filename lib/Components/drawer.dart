import 'package:flutter/material.dart';
import 'package:gig_guide/Components/my_list_tile.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer_header: Logo
            DrawerHeader(child: 
            Icon(
            Icons.music_note_rounded,
            size:72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          ), 
          const SizedBox(height: 25),
          
          //Shop title
            MyListTile(
              text:"Profile",
              icon: Icons.home,
              onTap: () =>  Navigator.pop(context) 
              ),
          //crt title
            MyListTile(
              text:"My Events",
              icon: Icons.event_note,
              onTap: () {
              //pop drawer first
                Navigator.pop(context);
              //go to My events
                Navigator.pushNamed(context, '/my_events');
              } 
              ),
          //exit
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
                text:"Exit",
                icon: Icons.exit_to_app,
                onTap: () => Navigator.pushNamedAndRemoveUntil(context, 'intro_page', (route)=>false),
                ),
          )
        ],
      ),
    );
  }
}