@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Hierarchy CDS'
define hierarchy ZI_EMPLOYEEHR_BR
  as parent child hierarchy(
    source ZI_EMPLOYEE_BR
    child to parent association _Manager
    start where
      Manager is initial
    siblings order by
      LastName ascending
  )
{
  key Employee,
      Manager
}
