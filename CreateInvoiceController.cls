public with sharing class CreateInvoiceController {

    @AuraEnabled(cacheable=true)
    public static List<SObject> fetchLineItems(String query){
        try{
            System.debug('Line Items fetching');
            System.debug(query);
            return Database.query(query);
        }
        catch (Exception e){
            System.debug('Error in SOQL: '+e.getMessage());
            throw new AuraHandledException('Failed to fetch line items');
        }
    }
}