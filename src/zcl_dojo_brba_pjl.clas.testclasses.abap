CLASS ltcl_test DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA: cut TYPE REF TO zcl_dojo_brba_pjl.
    METHODS:
      simple FOR TESTING RAISING cx_static_check,
      simple2 FOR TESTING RAISING cx_static_check,
      simple3 FOR TESTING RAISING cx_static_check,
      setup.
ENDCLASS.


CLASS ltcl_test IMPLEMENTATION.

  METHOD setup.
    cut = NEW zcl_dojo_brba_pjl(  ).
  ENDMETHOD.

  METHOD simple.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = '<B>He</B>in <B>B</B>löd' act = cut->generate( 'Hein Blöd' ) ).
  ENDMETHOD.

  METHOD simple2.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = 'Kä<B>Pt</B>n Bl<B>Au</B>bär' act = cut->generate( 'Käptn Blaubär' ) ).
  ENDMETHOD.

  METHOD simple3.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = 'X<B>He</B>lm' act = cut->generate( 'Xhelm' ) ).
  ENDMETHOD.

ENDCLASS.
