import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:rp_management/model/worldtimemodel.dart';
import 'package:rp_management/repository/worldtimerepository.dart';

final controllProvider =
    StateNotifierProvider<WorldTimeController, AsyncValue<WorldTimeModel>>(
        (ref) {
  final repository = ref.watch(worldtimeRepositoryProvider);
  return WorldTimeController(repository);
});

class WorldTimeController extends StateNotifier<AsyncValue<WorldTimeModel>> {
  WorldTimeRepository repo;
  WorldTimeController(this.repo) : super(AsyncValue.loading()) {
    fetchdatafromrepo();
  }

  fetchdatafromrepo() async {
    final response = await repo.fetchApi();
    state = AsyncData(response);
  }
}
