FUNCTION zage_fm_hello
  IMPORTING
    VALUE(iv_name) TYPE string
  EXPORTING
    VALUE(ev_greeting) TYPE string
  CHANGING
    VALUE(cv_counter) TYPE i
  RAISING
    cx_sy_zerodivide.

  IF iv_name IS INITIAL.
    RAISE EXCEPTION TYPE cx_sy_zerodivide.
  ENDIF.

  cv_counter = cv_counter + 1.
  ev_greeting = |Hello, { iv_name }! (call #{ cv_counter })|.

ENDFUNCTION.
