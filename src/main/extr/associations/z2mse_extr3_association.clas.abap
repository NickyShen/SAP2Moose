"! I describe an association between elements.
"! I have sub classes that specify concrete types of associations.
CLASS z2mse_extr3_association DEFINITION
  PUBLIC
  INHERITING FROM z2mse_extr3.

  PUBLIC SECTION.
    types ass_type TYPE c LENGTH 30.
    DATA type TYPE ass_type READ-ONLY.

    CONSTANTS: parent_package_ass LIKE type VALUE 'parent_package',
               access_ass         LIKE type VALUE 'access',
               invocation_ass     LIKE type VALUE 'invocation'.

    METHODS make_model
      IMPORTING
        association TYPE z2mse_extr3_element_manager=>association_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z2MSE_EXTR3_ASSOCIATION IMPLEMENTATION.


  METHOD make_model.
    " I must be redefined
    ASSERT 1 = 2.
  ENDMETHOD.
ENDCLASS.
