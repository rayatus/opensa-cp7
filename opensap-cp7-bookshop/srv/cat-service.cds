using { com.jsancho.sap.opensap.cp7.bookshop.db as my } from '../db/schema';

service CatalogService @(path: '/browse') {

    @readonly entity Books as SELECT from my.Books {* , author.name as author} excluding { createdBy, modifiedBy };
    
    @requires  :'authenticated-user'
    @insertonly entity Orders as projection on my.Orders;

}