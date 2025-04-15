// import 'package:shared_preferences/shared_preferences.dart';
//
// class SharedPref {
//   loggIn(String id) async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setBool('isLoggedIn', true);
//     await pref.setString('id', id);
//
//   }
//
//   loggOut() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setBool('isLoggedIn', false);
//     await pref.setString('id', '');
//   }
//
//   Future<bool> getloggInStatus() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     bool? status = pref.getBool('isLoggedIn');
//     if (status == null) {
//       return false;
//     } else {
//       return status;
//     }
//   }
//
//   Future<String> getId() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     String id = pref.getString('id')!;
//     print('inside shared pref id :$id');
//     return id;
//   }
// }


// import 'package:dnalyst/services/user_provider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class SharedPref {
//   // Save user login status, id, and name to SharedPreferences
//   // Future<void> loggIn(String id, String fullName) async {
//   //   SharedPreferences pref = await SharedPreferences.getInstance();
//   //   await pref.setBool('isLoggedIn', true);
//   //   UserProvider().setUser(id, fullName);
//   //   await pref.setString('id', id);
//   //   await pref.setString('fullName', fullName);
//   //
//   // }
//
//   Future<void> loggIn(BuildContext context, String id, String fullName) async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setBool('isLoggedIn', true);
//     Provider.of<UserProvider>(context, listen: false).setUser(id, fullName); // Use existing instance
//     await pref.setString('id', id);
//     await pref.setString('fullName', fullName);
//   }
//
//
//
//
//
//
//   // Log out by clearing user data
//   Future<void> loggOut() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setBool('isLoggedIn', false);
//     await pref.remove('id');
//     await pref.remove('fullName');
//   }
//
//   // Get login status
//   Future<bool> getloggInStatus() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getBool('isLoggedIn') ?? false;
//   }
//
//   // Get user id
//   Future<String?> getId() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getString('id');
//   }
//
//   // Get user name
//   Future<String?> getFullName() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getString('fullName');
//   }
// }
// this is working code


import 'package:dnalyst/services/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  // Save user login status, id, and name to SharedPreferences
  Future<void> loggIn(BuildContext context, String id, String fullName, String email) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('isLoggedIn', true);
    Provider.of<UserProvider>(context, listen: false).setUser(id, fullName, email); // Use existing instance
    await pref.setString('id', id);
    await pref.setString('fullName', fullName);
    await pref.setString('email', email);
  }

  // Log out by clearing user data
  Future<void> loggOut() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('isLoggedIn', false);
    await pref.remove('id');
    await pref.remove('fullName');
    await pref.remove('email');
  }

  // Get login status
  Future<bool> getloggInStatus() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('isLoggedIn') ?? false;
  }

  // Get user id
  Future<String?> getId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('id');
  }

  // Get user name
  Future<String?> getFullName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('fullName');
  }

  // Get user email
  Future<String?> getEmail() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('email'); // Retrieve email
  }
}

