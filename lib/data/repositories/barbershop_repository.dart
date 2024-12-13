
import '../../domain/models/barbershop.dart';
import '../datasources/barbershop_remote_data_source.dart';

class BarbershopRepositoryImpl implements BarbershopRepository {
  final BarbershopRemoteDataSource remoteDataSource;

  BarbershopRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Barbershop>> getBarbershops() async {
    return await remoteDataSource.fetchBarbershops();
  }
}

class BarbershopRepository {
  getBarbershops() {}
}
