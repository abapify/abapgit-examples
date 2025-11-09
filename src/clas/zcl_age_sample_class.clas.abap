CLASS zcl_age_sample_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS constructor.
  class-METHODS class_constructor.
  METHODS public_method.


  PROTECTED SECTION.
  METHODS protected_method.
  PRIVATE SECTION.
  METHODS private_method.
ENDCLASS.



CLASS zcl_age_sample_class IMPLEMENTATION.
  METHOD class_constructor.

  ENDMETHOD.

  METHOD constructor.
    write 'constructor'.
  ENDMETHOD.

  METHOD private_method.
    write 'private_method'.
  ENDMETHOD.

  METHOD protected_method.
    write 'protected_method'.
  ENDMETHOD.

  METHOD public_method.
    write 'public_method'.
  ENDMETHOD.



ENDCLASS.
