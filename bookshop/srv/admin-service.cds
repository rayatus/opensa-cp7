using { com.jsancho.sap.opensap.cp7.bookshop.db as my } from '../db/schema';

service AdminService @(_requieres:'admin'){
    entity Books as projection on my.Books;
    entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders;
}
