import 'package:world_countries/model/countries.dart';
import 'package:world_countries/repository/country_repository.dart';

class CountriesBloc {
  final CountryRepository _repository = CountryRepository();

  Stream<CountryModel> get getCountries async* {
    CountryModel countryData = await _repository.getCountries('argentina');
    //print("DATA 3: " + countryData.capital);
    yield countryData;
  }
}
