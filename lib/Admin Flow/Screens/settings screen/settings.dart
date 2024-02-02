import 'package:flutter/material.dart';
class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
            width: double.infinity, 
            height: 345,
            child: ListView(
              children: <Widget>[
                _buildListTile(
                  icon: Icons.person_3_outlined,
                  title: 'My Account',
                  onTap: () {
                   print('My Account tapped');
                  },
                ),
                _buildListTile(
                  icon: Icons.notifications_none_outlined,
                  title: 'Notification',
                  onTap: () {
                   print('Notification tapped');
                  },
                ),
                _buildListTile(
                  icon: Icons.remove_red_eye_outlined,
                  title: 'Appearance',
                  onTap: () {
                   print('Appearance tapped');
                  },
                ),
                _buildListTile(
                  icon: Icons.lock_outline_rounded,
                  title: 'Privacy & Security',
                  onTap: () {
                   print('Privacy & Security tapped');
                  },
                ),
                _buildListTile(
                  icon: Icons.question_mark_rounded,
                  title: 'Help & Support',
                  onTap: () {
                    print('Help & Support tapped');
                  },
                ),
                _buildListTile(
                  icon: Icons.info_outline,
                  title: 'About',
                  onTap: () {
                      print('About tapped');
                  },
                ),
              ],
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
          trailing: const Icon(Icons.keyboard_arrow_right, size: 30),
          onTap: onTap,
        ),
        const Divider(
          height: 5,
          thickness: 1,
        ),
      ],
    );
  }
}