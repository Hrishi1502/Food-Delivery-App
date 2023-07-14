import "package:flutter/material.dart" show BoxDecoration, BoxFit, BuildContext, CircleAvatar, ClipOval, Colors, DecorationImage, Drawer, EdgeInsets, Icon, Icons, Image, ListTile, ListView, NetworkImage, StatelessWidget, Text, UserAccountsDrawerHeader, Widget;

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text ('Hrishikesh Masatkar'),
             accountEmail: Text('hrishikeshmasatkar005@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image(
                    image: NetworkImage('https://avatars.githubusercontent.com/u/107071585?s=400&u=85e2329504539156d917be3e9a694673bf2d4f5a&v=4'),
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkoc-0hvrwqNJWrPCG_bbWDqr6h-dIZOQwqQ'),
                  fit: BoxFit.cover,
                ),
              ),
             ),
             ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favourites'),
                onTap: () {}
              ),
              ListTile(
                leading: const Icon(Icons.share),
                title: const Text('Share'),
                onTap: () {}
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text('Contacts'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('Info'),
                onTap: () {}
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {}
              ),
        ],
    ), 
    );
  }
}
