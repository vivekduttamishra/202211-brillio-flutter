

class CountryInfo{

  String name;
  String capital;
  String currency;
  double population;

  CountryInfo(this. name, this. capital, this. currency,{this.population=double.nan});

  toString(){
    return '$name [ capital: $capital, currency: $currency, population: $population]';
  }

}