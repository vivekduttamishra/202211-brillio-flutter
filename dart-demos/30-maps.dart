

import 'lib/countryinfo.dart';


printInfoNullCheck(Map<String,CountryInfo> db, String key){

  var info= db[key];

  if(info!=null){
    print('Country: ${info.name}');
    print('Captial: ${info.capital}');
    print('Currency: ${info.currency}');

  } else{
    print('No country found with code "$key"');
  }

}

printInfoAssertNotNull(Map<String,CountryInfo> db, String key){


    var info= db[key]!; //explamation marks suggest info will not be null
    print('Country: ${info.name}'); 
    print('Captial: ${info.capital}');
    print('Currency: ${info.currency}');  

}

void main(){

  //creating a simple map of country code and country CountryInfo

  var db={
    "IN": CountryInfo('India','New Delhi','INR'),
    "JP": CountryInfo('Japan','Tokyo','YEN'),
    'UK':CountryInfo('United Kingdom','London','GBP'),
  };

  printInfoAssertNotNull(db,'IN');
  printInfoAssertNotNull(db,'USA');


}