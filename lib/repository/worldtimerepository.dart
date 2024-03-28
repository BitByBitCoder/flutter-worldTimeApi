import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:rp_management/model/worldtimemodel.dart';

final worldtimeRepositoryProvider = Provider<WorldTimeRepository>((ref) {
  return WorldTimeRepository();
});

class WorldTimeRepository {
  Future<WorldTimeModel> fetchApi() async {
    const url = 'http://worldtimeapi.org/api/timezone/Asia/Kolkata';
    final response = await http.get(Uri.parse(url));
    final result = convert.jsonDecode(response.body);
    print(result);
    return WorldTimeModel.fromJson(result);
  }
}
