CLASS zcl_age_atc_findings DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      run.
ENDCLASS.



CLASS ZCL_AGE_ATC_FINDINGS IMPLEMENTATION.


  METHOD run.

    "--------------------------------------------------
    " ATC ERROR:
    "  - SELECT * used
    "  - No WHERE clause
    "  - No ORDER BY
    "--------------------------------------------------
    SELECT *
      FROM sflight
      INTO TABLE @DATA(lt_sflight).

    "--------------------------------------------------
    " ATC WARNING: Unused variable
    "--------------------------------------------------
    DATA(lv_counter) = 0.

    "--------------------------------------------------
    " ATC ERROR: Nested SELECT (performance issue)
    "--------------------------------------------------
    LOOP AT lt_sflight INTO DATA(ls_flight).

      SELECT SINGLE *
        FROM scarr
        WHERE carrid = @ls_flight-carrid
        INTO @DATA(ls_scarr).

    ENDLOOP.

    "--------------------------------------------------
    " ATC WARNING: WRITE statement in class
    " (not allowed in clean OO / cloud-ready ABAP)
    "--------------------------------------------------
    WRITE: / 'ATC demo class'.

    "--------------------------------------------------
    " ATC ERROR: Obsolete statement
    "--------------------------------------------------
    REFRESH lt_sflight.

    "--------------------------------------------------
    " ATC WARNING: Magic number
    "--------------------------------------------------
    IF lines( lt_sflight ) > 100.
      WRITE: / 'More than 100 entries'.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
