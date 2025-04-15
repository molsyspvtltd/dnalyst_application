// import 'package:flutter/material.dart';
// import 'user_model.dart';
// import 'shared_pref.dart';
//
// class UserProvider with ChangeNotifier {
//   User? _user;
//
//   User? get user => _user;
//
//   // Load user data from SharedPreferences when app starts
//   Future<void> loadUserData() async {
//     SharedPref sharedPref = SharedPref();
//     String? id = await sharedPref.getId();
//     String? fullName = await sharedPref.getFullName();
//
//     if (id != null && fullName != null) {
//       _user = User(id: id, fullName: fullName);
//       notifyListeners();
//     }
//   }
//
//   // Set user data when user logs in
//   // Future<void> setUser(String id, String fullName) async {
//   //   _user = User(id: id, fullName: fullName);
//   //   SharedPref sharedPref = SharedPref();
//   //   await sharedPref.loggIn(id, fullName);
//   //   notifyListeners(); // Notify all listeners (screens) that user data has changed
//   // }
//   Future<void> setUser(String id, String fullName) async {
//     _user = User(id: id, fullName: fullName);
//     notifyListeners(); // Notify all listeners that user data has changed
//   }
//
//   // Clear user data when user logs out
//   Future<void> logout() async {
//     _user = null;
//     SharedPref sharedPref = SharedPref();
//     await sharedPref.loggOut();
//     notifyListeners();
//   }
// }  this is the working code



import 'package:flutter/material.dart';
import 'user_model.dart';
import 'shared_pref.dart';

class UserProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  // Load user data from SharedPreferences when app starts
  Future<void> loadUserData() async {
    SharedPref sharedPref = SharedPref();
    String? id = await sharedPref.getId();
    String? fullName = await sharedPref.getFullName();
    String? email = await sharedPref.getEmail();

    if (id != null && fullName != null && email != null) {
      _user = User(id: id, fullName: fullName, email: email);
      notifyListeners();
    }
  }

  // Set user data when user logs in
  Future<void> setUser(String id, String fullName, String email) async {
    _user = User(id: id, fullName: fullName, email: email);
    notifyListeners(); // Notify all listeners that user data has changed
  }

  // Clear user data when user logs out
  Future<void> logout() async {
    _user = null;
    SharedPref sharedPref = SharedPref();
    await sharedPref.loggOut();
    notifyListeners();
  }
}

