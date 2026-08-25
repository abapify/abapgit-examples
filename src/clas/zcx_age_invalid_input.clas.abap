class zcx_age_invalid_input definition
  public
  inheriting from cx_static_check
  final
  create public .

public section.
  interfaces if_t100_message .
  constants:
    begin of zcx_age_invalid_input,
      msgid type symsgid value '00',
      msgno type symsgno value '001',
      attr1 type scx_attrname value 'MV_MESSAGE',
      attr2 type scx_attrname value '',
      attr3 type scx_attrname value '',
      attr4 type scx_attrname value '',
    end of zcx_age_invalid_input .
  data mv_message type string read-only .

  methods constructor
    importing
      !iv_message type string optional
      !previous type ref to cx_root optional .
protected section.
private section.
ENDCLASS.



class zcx_age_invalid_input implementation.

  method constructor.
    super->constructor( previous = previous ).
    me->mv_message = iv_message .
    clear me->textid .
    if iv_message is not initial .
      message id zcx_age_invalid_input-msgid
              number zcx_age_invalid_input-msgno
              with iv_message
              into me->if_t100_message~t100key-msgv1 .
      if_t100_message~t100key-msgid = zcx_age_invalid_input-msgid .
      if_t100_message~t100key-msgno = zcx_age_invalid_input-msgno .
    endif .
  endmethod.

endclass.
