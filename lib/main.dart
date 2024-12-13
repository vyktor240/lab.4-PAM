import 'package:flutter/material.dart';
import 'package:your_project_name/presentation/pages/home_page.dart';
import 'data/datasources/barbershop_remote_data_source.dart';
import 'data/datasources/profile_remote_data_source.dart';
import 'data/repositories/barbershop_repository.dart';
import 'data/repositories/profile_repository.dart';
import 'domain/usecases/get_barbershops.dart';
import 'domain/usecases/get_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Crearea surselor de date remote pentru profile si barbershops
    final profileRemoteDataSource = ProfileRemoteDataSource();
    final barbershopRemoteDataSource = BarbershopRemoteDataSource();

    // Crearea repository-urilor
    final profileRepository = ProfileRepositoryImpl(remoteDataSource: profileRemoteDataSource);
    final barbershopRepository = BarbershopRepositoryImpl(remoteDataSource: barbershopRemoteDataSource);

    // Crearea usecase-urilor
    final getProfile = GetProfile(profileRepository);
    final getBarbershops = GetBarbershops(barbershopRepository);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        // Apelăm funcțiile care returnează tipurile corecte
        getProfile: getProfile.execute,
        getBarbershops: getBarbershops.execute,
        data: {}, // Poți adăuga datele corespunzătoare
      ),
    );
  }
}
