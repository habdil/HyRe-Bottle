import 'package:flutter/material.dart';
import 'package:smart_botol/features/profile/widgets/profile_option_button.dart';
import 'package:smart_botol/shared/widgets/custom_bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.blue),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38,
              backgroundImage: AssetImage('assets/images/profile.png'), // ganti dengan path gambar profil Anda
            ),
          ),
          SizedBox(height: 10),
          Text('RELASIBUK', style: Theme.of(context).textTheme.bodyMedium),
          Text('relasibuk@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 20),
          ProfileOptionButton(label: 'Goals', onTap: () {}),
          ProfileOptionButton(label: 'Notification', onTap: () {}),
          ProfileOptionButton(label: 'Contact Us', onTap: () {}),
          ProfileOptionButton(label: 'Privacy Policy', onTap: () {}),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Text(
              'Log out',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
