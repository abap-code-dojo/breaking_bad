class ZCL_DOJO_BREAKING_BAD definition
  public
  final
  create public .

public section.

  types:
    BEGIN OF _element,
        e  TYPE c LENGTH 2,
        oz TYPE i,
        n  TYPE string,
      END OF _element .
  types:
    _elements TYPE SORTED TABLE OF _element WITH UNIQUE KEY e .

  class-data ELEMENTS type _ELEMENTS .
  class-data UPPER_ELEMENTS type _ELEMENTS .

  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR .
  methods GENERATE_NAME
    importing
      !IV_NAME type CLIKE
    returning
      value(RV_NAME_HTML) type STRING .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS find_element
      IMPORTING
        iv_string    TYPE string
        iv_e_len     TYPE n
      EXPORTING
        ev_name_html TYPE string.
ENDCLASS.



CLASS ZCL_DOJO_BREAKING_BAD IMPLEMENTATION.


  METHOD CLASS_CONSTRUCTOR.


    elements = VALUE #(

    ( oz =   1 e = 'H ' n = 'Wasserstoff  (Hydro­genium)' )
    ( oz =   2 e = 'He' n = 'Helium' )
    ( oz =   3 e = 'Li' n = 'Lithium' )
    ( oz =   4 e = 'Be' n = 'Beryllium' )
    ( oz =   5 e = 'B ' n = 'Bor' )
    ( oz =   6 e = 'C ' n = 'Kohlenstoff  (Car­bonium)' )
    ( oz =   7 e = 'N ' n = 'Stickstoff	(Nitro­genium)' )
    ( oz =   8 e = 'O ' n = 'Sauerstoff	(Oxy­genium)' )
    ( oz =   9 e = 'F ' n = 'Fluor' )
    ( oz =  10 e = 'Ne' n = 'Neon' )
    ( oz =  11 e = 'Na' n = 'Natrium' )
    ( oz =  12 e = 'Mg' n = 'Magnesium' )
    ( oz =  13 e = 'Al' n = 'Aluminium' )
    ( oz =  14 e = 'Si' n = 'Silicium' )
    ( oz =  15 e = 'P ' n = 'Phosphor3' )
    ( oz =  16 e = 'S ' n = 'Schwefel	(Sulphur)' )
    ( oz =  17 e = 'Cl' n = 'Chlor' )
    ( oz =  18 e = 'Ar' n = 'Argon' )
    ( oz =  19 e = 'K ' n = 'Kalium' )
    ( oz =  20 e = 'Ca' n = 'Calcium' )
    ( oz =  21 e = 'Sc' n = 'Scandium' )
    ( oz =  22 e = 'Ti' n = 'Titan' )
    ( oz =  23 e = 'V ' n = 'Vanadium' )
    ( oz =  24 e = 'Cr' n = 'Chrom' )
    ( oz =  25 e = 'Mn' n = 'Mangan' )
    ( oz =  26 e = 'Fe' n = 'Eisen  (Ferrum)' )
    ( oz =  27 e = 'Co' n = 'Cobalt' )
    ( oz =  28 e = 'Ni' n = 'Nickel' )
    ( oz =  29 e = 'Cu' n = 'Kupfer (Cuprum)' )
    ( oz =  30 e = 'Zn' n = 'Zink' )
    ( oz =  31 e = 'Ga' n = 'Gallium' )
    ( oz =  32 e = 'Ge' n = 'Germanium' )
    ( oz =  33 e = 'As' n = 'Arsen' )
    ( oz =  34 e = 'Se' n = 'Selen' )
    ( oz =  35 e = 'Br' n = 'Brom' )
    ( oz =  36 e = 'Kr' n = 'Krypton' )
    ( oz =  37 e = 'Rb' n = 'Rubidium' )
    ( oz =  38 e = 'Sr' n = 'Strontium' )
    ( oz =  39 e = 'Y ' n = 'Yttrium' )
    ( oz =  40 e = 'Zr' n = 'Zirconium' )
    ( oz =  41 e = 'Nb' n = 'Niobv' )
    ( oz =  42 e = 'Mo' n = 'Molybdän' )
    ( oz =  43 e = 'Tc' n = 'Technetium' )
    ( oz =  44 e = 'Ru' n = 'Ruthenium' )
    ( oz =  45 e = 'Rh' n = 'Rhodium' )
    ( oz =  46 e = 'Pd' n = 'Palladium' )
    ( oz =  47 e = 'Ag' n = 'Silber(Argentum)' )
    ( oz =  48 e = 'Cd' n = 'Cadmium' )
    ( oz =  49 e = 'In' n = 'Indium' )
    ( oz =  50 e = 'Sn' n = 'Zinn	(Stannum)' )
    ( oz =  51 e = 'Sb' n = 'Antimon  (Stibium)' )
    ( oz =  52 e = 'Te' n = 'Tellur' )
    ( oz =  53 e = 'I ' n = 'Iod' )
    ( oz =  54 e = 'Xe' n = 'Xenon' )
    ( oz =  55 e = 'Cs' n = 'Caesium' )
    ( oz =  56 e = 'Ba' n = 'Barium' )
    ( oz =  57 e = 'La' n = 'Lanthan' )
    ( oz =  58 e = 'Ce' n = 'Cer' )
    ( oz =  59 e = 'Pr' n = 'Praseodym' )
    ( oz =  60 e = 'Nd' n = 'Neodym' )
    ( oz =  61 e = 'Pm' n = 'Pro­methium' )
    ( oz =  62 e = 'Sm' n = 'Samarium' )
    ( oz =  63 e = 'Eu' n = 'Europium' )
    ( oz =  64 e = 'Gd' n = 'Gadolinium' )
    ( oz =  65 e = 'Tb' n = 'Terbium' )
    ( oz =  66 e = 'Dy' n = 'Dysprosium' )
    ( oz =  67 e = 'Ho' n = 'Holmium' )
    ( oz =  68 e = 'Er' n = 'Erbium' )
    ( oz =  69 e = 'Tm' n = 'Thulium' )
    ( oz =  70 e = 'Yb' n = 'Ytterbium' )
    ( oz =  71 e = 'Lu' n = 'Lutetium' )
    ( oz =  72 e = 'Hf' n = 'Hafnium' )
    ( oz =  73 e = 'Ta' n = 'Tantal' )
    ( oz =  74 e = 'W ' n = 'Wolfram' )
    ( oz =  75 e = 'Re' n = 'Rhenium' )
    ( oz =  76 e = 'Os' n = 'Osmiumv' )
    ( oz =  77 e = 'Ir' n = 'Iridium' )
    ( oz =  78 e = 'Pt' n = 'Platin' )
    ( oz =  79 e = 'Au' n = 'Gold (Aurum)' )
    ( oz =  80 e = 'Hg' n = 'Quecksilber  (Hydrar­gyrum)' )
    ( oz =  81 e = 'Tl' n = 'Thallium' )
    ( oz =  82 e = 'Pb' n = 'Blei	(Plumbum)' )
    ( oz =  83 e = 'Bi' n = 'Bismut	(auch Wismut)' )
    ( oz =  84 e = 'Po' n = 'Polonium' )
    ( oz =  85 e = 'At' n = 'Astat' )
    ( oz =  86 e = 'Rn' n = 'Radon' )
    ( oz =  87 e = 'Fr' n = 'Francium' )
    ( oz =  88 e = 'Ra' n = 'Radium' )
    ( oz =  89 e = 'Ac' n = 'Actinium' )
    ( oz =  90 e = 'Th' n = 'Thorium' )
    ( oz =  91 e = 'Pa' n = 'Protac­tinium' )
    ( oz =  92 e = 'U ' n = 'Uran' )
    ( oz =  93 e = 'Np' n = 'Neptunium' )
    ( oz =  94 e = 'Pu' n = 'Plutonium' )
    ( oz =  95 e = 'Am' n = 'Americium' )
    ( oz =  96 e = 'Cm' n = 'Curium' )
    ( oz =  97 e = 'Bk' n = 'Berkelium' )
    ( oz =  98 e = 'Cf' n = 'Californium' )
    ( oz =  99 e = 'Es' n = 'Einsteinium' )
    ( oz = 100 e = 'Fm' n = 'Fermium' )
    ( oz = 101 e = 'Md' n = 'Mende­levium' )
    ( oz = 102 e = 'No' n = 'Nobelium' )
    ( oz = 103 e = 'Lr' n = 'Lawren­cium' )
    ( oz = 104 e = 'Rf' n = 'Ruther­fordium' )
    ( oz = 105 e = 'Db' n = 'Dubnium' )
    ( oz = 106 e = 'Sg' n = 'Seaborgium' )
    ( oz = 107 e = 'Bh' n = 'Bohrium' )
    ( oz = 108 e = 'Hs' n = 'Hassiumv' )
    ( oz = 109 e = 'Mt' n = 'Meitnerium' )
    ( oz = 110 e = 'Ds' n = 'Darm­stadtium' )
    ( oz = 111 e = 'Rg' n = 'Roent­genium' )
    ( oz = 112 e = 'Cn' n = 'Coper­nicium' )
    ( oz = 113 e = 'Nh' n = 'Nihonium' )
    ( oz = 114 e = 'Fl' n = 'Flerovium' )
    ( oz = 115 e = 'Mc' n = 'Moscovium' )
    ( oz = 116 e = 'Lv' n = 'Liver­morium' )
    ( oz = 117 e = 'Ts' n = 'Tenness' )
    ( oz = 118 e = 'Og' n = 'Oganesson' ) ).

    upper_elements = VALUE #( FOR element IN elements ( oz = element-oz
                                                                e = |{ element-e CASE = UPPER }|
                                                                n = element-n )  ).

  ENDMETHOD.


  METHOD CONSTRUCTOR.


  ENDMETHOD.


  METHOD find_element.

    DATA(lv_string_length) = strlen( iv_string ).
    DATA(lv_count) = strlen( iv_string ) + 1 - iv_e_len.
    DATA(offset) = 0.

    DO lv_count TIMES.
      TRY.

          DATA(ls_element) = upper_elements[ e = |{ iv_string+offset(iv_e_len) CASE = UPPER }| ].
          DATA(offset_back) =  offset + iv_e_len.
          DATA(length_back) = lv_string_length - offset_back.
          ev_name_html = |{ iv_string+0(offset) }<B>{ elements[ oz = ls_element-oz ]-e }</B>{ iv_string+offset_back(length_back) }|.
          EXIT.
        CATCH cx_sy_itab_line_not_found.
      ENDTRY.
      ADD 1 TO offset.
    ENDDO.

  ENDMETHOD.


  METHOD generate_name.
    DATA: lt_string TYPE string_table.


    SPLIT iv_name AT space INTO TABLE lt_string.

    DATA name_html TYPE string.

    LOOP AT lt_string INTO DATA(lv_string).

      CLEAR name_html.

      find_element(
      EXPORTING
        iv_string        = lv_string
        iv_e_len         = 2
      IMPORTING
        ev_name_html = name_html
      ).
      IF name_html IS INITIAL.
        find_element(
              EXPORTING
                iv_string        = lv_string
                iv_e_len         = 1
              IMPORTING
                ev_name_html = name_html
              ).
      ENDIF.

      IF name_html IS INITIAL.
        name_html = lv_string.
      ENDIF.

      IF rv_name_html NE space.
        rv_name_html = |{ rv_name_html } { name_html }|.
      ELSE.
        rv_name_html = name_html.
      ENDIF.
    ENDLOOP.



  ENDMETHOD.
ENDCLASS.
