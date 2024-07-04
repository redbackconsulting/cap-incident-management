using { sap.capire.incidents as my } from '../db/schema.cds';
@path: '/service/incident-management'
@requires: 'support'
service ProcessorService {
    @odata.draft.enabled
    entity Incidents as projection on my.Incidents;
    
    @odata.draft.enabled
    entity Customers as projection on my.Customers;
    @odata.draft.enabled
    entity Urgency as projection on my.Urgency;
    @odata.draft.enabled
    entity Status as projection on my.Status;
}
extend projection ProcessorService.Customers with{
    firstName || ' ' || lastName as    name: String
}
