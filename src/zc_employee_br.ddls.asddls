@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
@Metadata.allowExtensions: true

@OData.hierarchy.recursiveHierarchy: [{ entity.name: 'ZI_EMPLOYEEHR_BR' }]

define root view entity ZC_EMPLOYEE_BR 
provider contract transactional_query
as projection on ZI_EMPLOYEE_BR
{
    key Employee,
    FirstName,
    LastName,
    Location,
    Department,
    Manager,
    
    _Manager : redirected to ZC_EMPLOYEE_BR
}
