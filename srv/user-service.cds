/**
 * Exposes user information
 */
service UserService @(
    path    : '/user',
    requires: 'authenticated-user'
) {
    /**
     * The current user
     */
    @odata.singleton
    entity me @cds.persistence.skip {
        id      : String; // user id
        locale  : String;
        tenant  : String;
        country : String;
    }

    action   login()       returns me;
    function getUserDump() returns String;
}
