import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mywebtoon/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webToonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webToonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webToonInstances;
    }
    throw Error();
  }
}
