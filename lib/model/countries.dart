class CountryModel {
  String name;
  List<String> topLevelDomain;
  String capital;
  String region;
  String subregion;
  int population;
  List<String> timezones;
  List<Languages> languages;
  String flag;

  CountryModel(
      {this.name,
      this.topLevelDomain,
      this.capital,
      this.region,
      this.subregion,
      this.population,
      this.timezones,
      this.languages,
      this.flag});

  CountryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    topLevelDomain = json['topLevelDomain'].cast<String>();
    capital = json['capital'];
    region = json['region'];
    subregion = json['subregion'];
    population = json['population'];
    timezones = json['timezones'].cast<String>();
    if (json['languages'] != null) {
      languages = new List<Languages>();
      json['languages'].forEach((v) {
        languages.add(new Languages.fromJson(v));
      });
    }
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['topLevelDomain'] = this.topLevelDomain;
    data['capital'] = this.capital;
    data['region'] = this.region;
    data['subregion'] = this.subregion;
    data['population'] = this.population;
    data['timezones'] = this.timezones;
    if (this.languages != null) {
      data['languages'] = this.languages.map((v) => v.toJson()).toList();
    }
    data['flag'] = this.flag;
    return data;
  }
}

class Languages {
  String iso6391;
  String iso6392;
  String name;
  String nativeName;

  Languages({this.iso6391, this.iso6392, this.name, this.nativeName});

  Languages.fromJson(Map<String, dynamic> json) {
    iso6391 = json['iso639_1'];
    iso6392 = json['iso639_2'];
    name = json['name'];
    nativeName = json['nativeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso639_1'] = this.iso6391;
    data['iso639_2'] = this.iso6392;
    data['name'] = this.name;
    data['nativeName'] = this.nativeName;
    return data;
  }
}
