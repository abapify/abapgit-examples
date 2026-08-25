FUNCTION zage_fm_calc.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_A) TYPE  I
*"     VALUE(IV_B) TYPE  I
*"     VALUE(IV_OPERATION) TYPE  STRING DEFAULT 'ADD'
*"  EXPORTING
*"     VALUE(EV_RESULT) TYPE  I
*"  RAISING
*"      CX_SY_ZERODIVIDE
*"      zcx_age_invalid_input
*"----------------------------------------------------------------------
  CASE to_upper( iv_operation ).
    WHEN 'ADD'.
      ev_result = iv_a + iv_b.
    WHEN 'SUB'.
      ev_result = iv_a - iv_b.
    WHEN 'MUL'.
      ev_result = iv_a * iv_b.
    WHEN 'DIV'.
      IF iv_b = 0.
        RAISE EXCEPTION TYPE cx_sy_zerodivide.
      ENDIF.
      ev_result = iv_a / iv_b.
    WHEN OTHERS.
      RAISE EXCEPTION TYPE zcx_age_invalid_input
        EXPORTING
          iv_message = |Unsupported operation: { iv_operation }|.
  ENDCASE.

ENDFUNCTION.
