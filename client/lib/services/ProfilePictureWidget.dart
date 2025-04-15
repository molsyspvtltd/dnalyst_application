import 'package:dnalyst/services/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? fullName = Provider.of<UserProvider>(context).user?.fullName;
    String firstLetter = fullName != null && fullName.isNotEmpty ? fullName[0].toUpperCase() : '';

    return Padding(
      padding: EdgeInsets.all(2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: 300,
          height: 200,
          alignment: Alignment.center,
          color: Colors.white, // Background color set to navy blue
          child: Text(
            firstLetter,
            style: TextStyle(
              fontSize: 30, // Adjust size as needed
              fontFamily: 'PlusJakartaSans',
              color: Color(0xB4CC5500), // Text color set to white
            ),
          ),
        ),
      ),
    );
  }
}
