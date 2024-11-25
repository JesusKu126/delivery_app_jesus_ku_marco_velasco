import 'package:delivery_app_jesus_ku_marco_velasco/auth/auth_service.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/components/my_drawer_tile.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          MyDrawerTile(
              text: 'H O M E',
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context);
              }),

          MyDrawerTile(
              text: 'C O N F I G U R A C I O N',
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              }),

          const Spacer(),

          //logout list tile
          MyDrawerTile(
              text: 'C E R R A R S E S I O N',
              icon: Icons.logout,
              onTap: () {}),

          const SizedBox(
            height: 25.0,
          )
        ],
      ),
    );
  }
}
