@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee CDS'
define root view entity ZI_EMPLOYEE_BR as select from ztb_employee
association of many to one ZI_EMPLOYEE_BR as _Manager on $projection.Manager = _Manager.Employee
{
    key employee as Employee,
    first_name as FirstName,
    last_name as LastName,
    location as Location,
    department as Department,
    manager as Manager,
    _Manager
}
