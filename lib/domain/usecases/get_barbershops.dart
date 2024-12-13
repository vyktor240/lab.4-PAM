import '../../data/repositories/barbershop_repository.dart';

class GetBarbershops {
  final BarbershopRepository barbershopRepository;

  GetBarbershops(this.barbershopRepository);

  Future<List<dynamic>> execute() async {
    final barbershops = await barbershopRepository.getBarbershops();
    // Vom returna lista de barbershops așa cum este, deoarece este deja de tip `List<dynamic>`
    return barbershops;
  }
}
