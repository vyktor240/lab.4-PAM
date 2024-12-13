
import '../../domain/models/profile.dart';
import '../datasources/profile_remote_data_source.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;

  ProfileRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Profile> getProfile() async {
    return await remoteDataSource.fetchProfile();
  }
}

class ProfileRepository {
  getProfile() {}
}
