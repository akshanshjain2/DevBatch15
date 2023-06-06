List<String> englishList = ListExtra_Assignment.schoolsList('English');
System.debug('englishList : ' + englishList);
List<String> turkishList = ListExtra_Assignment.schoolsList('Turkish');
System.debug('turkishList : ' + turkishList);
List<String> japaneseList = ListExtra_Assignment.schoolsList('Japanese');
System.debug('japaneseList : ' + japaneseList);

Map<String,List<String>> citySchoolMap = ListExtra_Assignment.schoolsMap(); 
System.debug('English List from Map : ' + citySchoolMap.get('English'));
System.debug('Turkish List from Map : ' + citySchoolMap.get('Turkish'));
System.debug('Japanese List from Map : ' + citySchoolMap.get('Japanese'));