import 'package:flutter/material.dart';


class Settings76 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
            child: Container(
              width: double.infinity, // Expand width to screen size
              height: 345,
              child: ListView(
                children: <Widget>[
                  _buildListTile(
                    icon: Icons.person_3_outlined,
                    title: 'My Account',
                    onTap: () {
                      // Action for My Account
                      print('My Account tapped');
                    },
                  ),
                  _buildListTile(
                    icon: Icons.notifications_none_outlined,
                    title: 'Notification',
                    onTap: () {
                      // Action for Notification
                      print('Notification tapped');
                    },
                  ),
                  _buildListTile(
                    icon: Icons.remove_red_eye_outlined,
                    title: 'Appearance',
                    onTap: () {
                      // Action for Appearance
                      print('Appearance tapped');
                    },
                  ),
                  _buildListTile(
                    icon: Icons.lock_outline_rounded,
                    title: 'Privacy & Security',
                    onTap: () {
                      // Action for Privacy & Security
                      print('Privacy & Security tapped');
                    },
                  ),
                  _buildListTile(
                    icon: Icons.question_mark_rounded,
                    title: 'Help & Support',
                    onTap: () {
                      // Action for Help & Support
                      print('Help & Support tapped');
                    },
                  ),
                  _buildListTile(
                    icon: Icons.info_outline,
                    title: 'About',
                    onTap: () {
                      // Action for About
                      print('About tapped');
                    },
                  ),
                  // Add more ListTiles using _buildListTile function
                ],
              ),
            ),
          ),
    );
  }

  Widget _buildListTile({IconData? icon, required String title, VoidCallback? onTap}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.keyboard_arrow_right, size: 30),
          onTap: onTap,
        ),
        Divider(
          height: 5,
          thickness: 1,
        ),
      ],
    );
  }
}
