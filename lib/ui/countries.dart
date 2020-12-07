import 'package:flutter/material.dart';
import 'package:world_countries/bloc/countries.dart';
import 'package:world_countries/model/countries.dart';

class Countries extends StatefulWidget {
  final String continent;
  Countries(this.continent);

  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  final countriesBloc = CountriesBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a country'),
      ),
      body: StreamBuilder(
          // subscribe to any changes
          stream: countriesBloc.getCountries,
          builder: (_, AsyncSnapshot<CountryModel> snapshot) {
            //print(snapshot.data);
            // This list can be null, so control it like this:
            var country = snapshot.data;

            return ListView.builder(
              itemCount: 1,
              itemBuilder: (_, i) {
                return ListTile(
                  title: Text("Param to use in API: " + widget.continent),
                  subtitle: Text(
                      "Argentina capital: " + country.capital + " (from API)"),
                );
              },
            );
          }),
    );
  }
}
