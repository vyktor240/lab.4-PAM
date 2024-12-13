import 'dart:convert';
import 'package:flutter/services.dart';


import '../../domain/models/barbershop.dart';

class BarbershopRemoteDataSource {
  Future<List<Barbershop>> fetchBarbershops() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> json = jsonDecode(jsonString);
    var barbershopsList = json['barbershops'] as List;
    return barbershopsList.map((barbershop) => Barbershop.fromJson(barbershop)).toList();
  }
}
