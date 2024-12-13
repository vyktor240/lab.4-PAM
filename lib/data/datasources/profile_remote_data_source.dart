import 'dart:convert';
import 'package:flutter/services.dart';

import '../../domain/models/profile.dart';

class ProfileRemoteDataSource {
  Future<Profile> fetchProfile() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> json = jsonDecode(jsonString);
    return Profile.fromJson(json['profile']);
  }
}
