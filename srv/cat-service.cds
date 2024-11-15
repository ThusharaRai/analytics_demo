// using my.bookshop as my from '../db/schema';

// service CatalogService {
//    entity Books as projection on my.Books;
// }

using my.bookshop as my from '../db/schema';

service CatalogService {
   // @readonly
    @odata.draft.enabled
    entity Books as projection on my.Books;
}


annotate CatalogService with @(requires: 'authenticated-user');

annotate CatalogService.Books with @(restrict: [{
    grant: '*',
  //  to : 'bookmanager',
    where: 'country = $user.country'
}]);


