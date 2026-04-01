FUNCTION zage_fm_calc
  IMPORTING
    VALUE(iv_a) TYPE i
    VALUE(iv_b) TYPE i
    VALUE(iv_operation) TYPE string DEFAULT 'ADD'
  EXPORTING
    VALUE(ev_result) TYPE i
  RAISING
    cx_sy_zerodivide.

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
