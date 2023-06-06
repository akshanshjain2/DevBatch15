public class ListExtra_Assignment {
    public static List<String> schoolsList (String medium) {
        List<String> sList = new List<String>{ 'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};
        List<String> returnList = new List<String>();
        for(String school : sList){
            if(school.containsIgnoreCase(medium)){
                returnList.add(school);
            }
        }
        return returnList;
    }

    public static Map<String,List<String>> schoolsMap () {        
        Map<String,List<String>> returnMap = new Map<String,List<String>>();
        returnMap.put('English', schoolsList('English'));
        returnMap.put('Turkish', schoolsList('Turkish'));
        returnMap.put('Japanese', schoolsList('Japanese'));
        return returnMap;
    }
}