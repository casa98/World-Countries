import 'package:dio/dio.dart';
import 'package:world_countries/model/countries.dart';

class CountryApiProvider {
  final String _endpoint = "https://restcountries.eu/rest/v2/name/";
  final Dio _dio = Dio();

  Future<CountryModel> getCountries(String continent) async {
    String _query = _endpoint + continent;
    Response response = await _dio.get(_query);
    print("FETCH ONE:   " + response.data[0]['name'].toString());
    return CountryModel.fromJson(response.data[0]);
  }
}
