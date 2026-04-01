FUNCTION zage_fm_hello.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_NAME) TYPE  STRING
*"  EXPORTING
*"     VALUE(EV_GREETING) TYPE  STRING
*"  CHANGING
*"     VALUE(CV_COUNTER) TYPE  I
*"  RAISING
*"      CX_SY_ZERODIVIDE
*"----------------------------------------------------------------------
  IF iv_name IS INITIAL.
    RAISE EXCEPTION TYPE cx_sy_zerodivide.
  ENDIF.

  cv_counter = cv_counter + 1.
  ev_greeting = |Hello, { iv_name }! (call #{ cv_counter })|.

ENDFUNCTION.
