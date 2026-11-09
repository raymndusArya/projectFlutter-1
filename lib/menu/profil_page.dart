import 'package:flutter/material.dart';
import 'package:project1/components/custom_section_card.dart';

class ProfilPage extends StatelessWidget {
  ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:  Text('Account',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
      ),
      body: ListView(
        padding:  EdgeInsets.all(16),
        children: [
          CustomSectionCard(
            title: 'PROFILE',
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading:  CircleAvatar(child: Text('AA')),
                  title:  Text('arya aja',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  trailing: TextButton(
                    onPressed: () {},
                    child:  Text('Edit'),
                  ),
                ),
                 ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Setup Profile',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  subtitle: Text(
                    'Setup your profile to share your music and see what your friends are playing.',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
           CustomSectionCard(
            title: 'SUBSCRIPTION',
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Subscribe Now',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Manage Family',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Country/Region',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Redeem Code',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ],
            ),
          ),
           CustomSectionCard(
            title: 'NOTIFICATIONS',
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Manage Notifications',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  subtitle: Text(
                    'Apple associates your notifications viewing and interaction data with your Apple Account.',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
           CustomSectionCard(
            title: 'ACCOUNT',
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Apps with Access',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  subtitle: Text('One app connected',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Sign Out',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  subtitle: Text('raymundusaryasatya98@gmail.com',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
