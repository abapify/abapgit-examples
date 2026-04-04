CLASS zcl_age_rap_sample DEFINITION
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    INTERFACES if_rap_query_provider.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_age_rap_sample IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( 'RAP Sample Implementation Class' ).
  ENDMETHOD.

  METHOD if_rap_query_provider~select.
    RETURN.
  ENDMETHOD.

ENDCLASS.