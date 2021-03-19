*"* use this source file for your ABAP unit test classes

CLASS lcl_name DEFINITION FOR TESTING
  DURATION MEDIUM
  RISK LEVEL HARMLESS
.
*?﻿<asx:abap xmlns:asx="http://www.sap.com/abapxml" version="1.0">
*?<asx:values>
*?<TESTCLASS_OPTIONS>
*?<TEST_CLASS>lcl_Name
*?</TEST_CLASS>
*?<TEST_MEMBER>f_Cut
*?</TEST_MEMBER>
*?<OBJECT_UNDER_TEST>ZCL_DOJO_BRBA_PSE
*?</OBJECT_UNDER_TEST>
*?<OBJECT_IS_LOCAL/>
*?<GENERATE_FIXTURE/>
*?<GENERATE_CLASS_FIXTURE/>
*?<GENERATE_INVOCATION>X
*?</GENERATE_INVOCATION>
*?<GENERATE_ASSERT_EQUAL>X
*?</GENERATE_ASSERT_EQUAL>
*?</TESTCLASS_OPTIONS>
*?</asx:values>
*?</asx:abap>
  PRIVATE SECTION.
    DATA:
      f_cut TYPE REF TO zcl_dojo_breaking_bad.  "class under test
    METHODS: setup.
    METHODS: generate_name FOR TESTING,
      kaeptn_blaubaer FOR TESTING RAISING cx_static_check,
      xhelm FOR TESTING RAISING cx_static_check,
      bloed FOR TESTING RAISING cx_static_check,
      kaeptn FOR TESTING RAISING cx_static_check,
      nico_schmarje FOR TESTING,
      leon_moeller FOR TESTING,
      calvin_jessop FOR TESTING,
      enno_wulff FOR TESTING,
      aaa_xxx FOR TESTING.
ENDCLASS.       "lcl_Name


CLASS lcl_name IMPLEMENTATION.

  METHOD setup.
    f_cut = NEW #( ).
  ENDMETHOD.

  METHOD generate_name.
    cl_abap_unit_assert=>assert_equals( act = f_cut->generate_name( 'Hein Blöd' ) exp   = '<B>He</B>in <B>B</B>löd' ).
  ENDMETHOD.

  METHOD bloed.
    cl_abap_unit_assert=>assert_equals( act = f_cut->generate_name( 'Blöd' ) exp   = '<B>B</B>löd'  ).
  ENDMETHOD.

  METHOD kaeptn.
    cl_abap_unit_assert=>assert_equals( act = f_cut->generate_name( 'Käptn' ) exp   = 'Kä<B>Pt</B>n' ).
  ENDMETHOD.

  METHOD kaeptn_blaubaer.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = 'Kä<B>Pt</B>n B<B>La</B>ubär' act = f_cut->generate_name( 'Käptn Blaubär' ) ).
  ENDMETHOD.

  METHOD xhelm.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = 'X<B>He</B>lm' act = f_cut->generate_name( 'Xhelm' ) ).
  ENDMETHOD.

  METHOD nico_schmarje.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = '<B>Ni</B>co <B>Sc</B>hmarje' act = f_cut->generate_name( 'Nico Schmarje' ) ).
  ENDMETHOD.

  METHOD leon_moeller.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = 'Le<B>O</B>n Möll<B>Er</B>' act = f_cut->generate_name( 'Leon Möller' ) ).
  ENDMETHOD.

  METHOD calvin_jessop.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = '<B>Ca</B>lvin J<B>Es</B>sop' act = f_cut->generate_name( 'Calvin Jessop' ) ).
  ENDMETHOD.

  METHOD enno_wulff.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = 'En<B>No</B> <B>W</B>ulff' act = f_cut->generate_name( 'Enno Wulff' ) ).
  ENDMETHOD.

  METHOD aaa_xxx.
    cl_abap_unit_assert=>assert_equals( msg = 'match' exp = 'Aaa Xxx' act = f_cut->generate_name( 'Aaa Xxx' ) ).
  ENDMETHOD.

ENDCLASS.
