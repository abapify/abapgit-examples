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
*"      zcx_age_invalid_input
*"----------------------------------------------------------------------
  IF iv_name IS INITIAL.
    RAISE EXCEPTION TYPE zcx_age_invalid_input
      EXPORTING
        iv_message = 'IV_NAME cannot be empty'.
  ENDIF.

  cv_counter = cv_counter + 1.
  ev_greeting = |Hello, { iv_name }! (call #{ cv_counter })|.

ENDFUNCTION.
