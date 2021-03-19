class ZCL_DOJO_BRBA_PJL definition
  public
  final
  create public .

public section.

  methods GENERATE
    importing
      !I_NAME type STRING
    returning
      value(R_FORMATTED_NAME) type STRING .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DOJO_BRBA_PJL IMPLEMENTATION.


  METHOD generate.
    SPLIT i_name AT space INTO TABLE DATA(words).
    LOOP AT words REFERENCE INTO  DATA(word).
      DATA(changed) = abap_false.
      LOOP AT zcl_dojo_breaking_bad=>elements INTO DATA(element)  WHERE e+1(1) <> space.
        REPLACE element-e IN word->* WITH |<B>{ element-e }</B>| IGNORING CASE.
        IF sy-subrc = 0.
          changed = abap_true.
          EXIT.
        ENDIF.
      ENDLOOP.
      IF changed = abap_false.
        LOOP AT zcl_dojo_breaking_bad=>elements INTO element WHERE e+1(1) = space.
          REPLACE element-e IN word->* WITH |<B>{ element-e }</B>| IGNORING CASE.
          IF sy-subrc = 0.
            EXIT.
          ENDIF.
        ENDLOOP.
      ENDIF.
    ENDLOOP.

    CONCATENATE LINES OF words  INTO r_formatted_name SEPARATED BY space.
  ENDMETHOD.
ENDCLASS.
