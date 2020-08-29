public with sharing class covid19Parser {
    public covid19Parser() {}
    @AuraEnabled
    public AllStats allstats;

    @AuraEnabled
    public List<Countries> countries;

    public class AllStats{
        @AuraEnabled
        public String NewConfirmed;
        @AuraEnabled
        public String TotalConfirmed;
        @AuraEnabled
        public String TotalDeaths;
        @AuraEnabled
        public String TotalRecovered;

    }
    public class Countries{
        @AuraEnabled
        public String Country ;
        @AuraEnabled
        public String NewConfirmed;
        @AuraEnabled
        public String TotalConfirmed;
        @AuraEnabled
        public String NewDeaths;
        @AuraEnabled
        public String TotalDeaths;
        @AuraEnabled
        public String NewRecovered;
        @AuraEnabled
        public String TotalRecovered;
    }

    public static covid19Parser parse(String json){
        return(covid19Parser) System.JSON.deserialize(json, covid19Parser.class); 
    }
}