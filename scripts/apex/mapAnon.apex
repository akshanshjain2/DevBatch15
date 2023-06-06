//map of string,string
Map<String,String> mapCC = new Map<String,String>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Portugal', 'Euro');
mapCC.put('India', 'Rupees'); //we added this first
mapCC.put('India', 'Rupee'); //then we added same key, another value,it will update the value it KEY exist
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa', 'usd');
mapCC.put('El Salvador', 'BTC'); //updates value
system.debug(mapCC);

//get value from map using KEY, method is .get(key)
//string currUSA = mapCC.get('USA');
string currIndia = mapCC.get('India');
system.debug(currIndia);

string country = 'Turkiye';
string curr = mapCC.get(country);
system.debug(country + ' currency is ' + curr);

//get all the countries from map
set<string> allCountry = mapCC.keySet();
system.debug('all countries ' + allCountry);

//get all the currencies from from map
list<string> allCurrencies = mapCC.values();//it returns all value from the map list
system.debug('all currencies ' + allCurrencies);