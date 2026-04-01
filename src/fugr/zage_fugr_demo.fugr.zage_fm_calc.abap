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
      ev_result = 0.
  ENDCASE.

ENDFUNCTION.
