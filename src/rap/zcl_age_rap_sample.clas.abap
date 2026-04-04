CLASS zcl_age_rap_sample DEFINITION
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    INTERFACES if_rap_query_provider.
  PRIVATE SECTION.
    METHODS validate_data
      IMPORTING
        keys     TYPE if_rap_query_provider=>tt_key
      RETURNING
        VALUE(result) TYPE abap_boolean.
ENDCLASS.

CLASS zcl_age_rap_sample IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( 'RAP Sample Implementation Class' ).
  ENDMETHOD.

  METHOD if_rap_query_provider~select.
    DATA filter TYPE if_rap_query_filter=>tt_range_option.
    DATA lt_data TYPE STANDARD TABLE OF zage_tabl.

    filter = io_query->get_filter( )->get_filter_conditions( ).

    SELECT FROM zage_tabl
      FIELDS client, name, description
      INTO TABLE lt_data.

    io_response->set_data( lt_data ).
  ENDMETHOD.

  METHOD validate_data.
    result = abap_true.
  ENDMETHOD.

ENDCLASS.
