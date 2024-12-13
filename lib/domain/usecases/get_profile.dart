import '../../data/repositories/profile_repository.dart';

class GetProfile {
  final ProfileRepository profileRepository;

  GetProfile(this.profileRepository);

  Future<Map<String, dynamic>> execute() async {
    final profile = await profileRepository.getProfile();
    // Vom transforma obiectul Profile într-un Map<String, dynamic>
    return {
      'name': profile.name,
      'email': profile.email,
    };
  }
}
