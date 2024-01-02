CLASS zcl_employee_fill DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_employee_fill IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA:it_emp TYPE TABLE OF ztb_employee.


*   fill internal table (itab)
    it_emp = VALUE #(
        ( employee  = '1' first_name = 'George' last_name = 'Noel' location = 'Bangalore'
          department = 'SAP' manager = '4'  )
        ( employee  = '2' first_name = 'Xavier' last_name = 'Nemes' location = 'Bangalore'
          department = 'SAP' manager = '4'  )
        ( employee  = '3' first_name = 'Thomas' last_name = 'Nobert' location = 'Bangalore'
          department = 'SAP' manager = '4'  )
        ( employee  = '4' first_name = 'Sebastian' last_name = 'Keller' location = 'Bangalore'
          department = 'SAP' manager = '8'  )
        ( employee  = '5' first_name = 'Stella' last_name = 'Noel' location = 'Bangalore'
          department = 'SAP' manager = '8'  )
        ( employee  = '6' first_name = 'Janet' last_name = 'Jackson' location = 'Bangalore'
          department = 'SAP' manager = '8'  )
        ( employee  = '7' first_name = 'Andrew' last_name = 'Robert' location = 'Bangalore'
          department = 'SAP' manager = '8'  )
        ( employee  = '8' first_name = 'Nancy' last_name = 'George' location = 'Bangalore'
          department = 'SAP' manager = '9'  )
        ( employee  = '9' first_name = 'Laura' last_name = 'Micheal' location = 'Bangalore'
          department = 'SAP' manager = ''  )
        ( employee  = '10' first_name = 'Ann' last_name = 'Maria' location = 'Bangalore'
          department = 'SAP' manager = '4'  )
        ( employee  = '11' first_name = 'Peter' last_name = 'John' location = 'Bangalore'
          department = 'SAP' manager = '9'  )
     ).

*   Delete the possible entries in the database table - in case it was already filled
*    DELETE FROM ztemployee_xxx.
*   insert the new table entries
    INSERT ztb_employee FROM TABLE @it_emp.

*   check the result
    SELECT * FROM ztb_employee INTO TABLE @it_emp.
    out->write( sy-dbcnt ).
    out->write( 'data inserted successfully!' ).

  ENDMETHOD.
ENDCLASS.
