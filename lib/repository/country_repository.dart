import 'package:world_countries/model/countries.dart';
import 'package:world_countries/repository/country_api_provider.dart';

class CountryRepository {
  CountryApiProvider _countryApiProvider = CountryApiProvider();
  Future<CountryModel> getCountries(String continent) {
    var countryInfo = _countryApiProvider.getCountries(continent);
    return countryInfo;
  }
}
