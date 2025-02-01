CLASS zcl_02_tipos_de_datos_jo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.


CLASS zcl_02_tipos_de_datos_jo IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lv_string TYPE string,
          lv_int    TYPE i VALUE 20241008,
          lv_date   TYPE d VALUE '20241008'.

    DATA lv_asd TYPE i VALUE 3.
    lv_asd = 4.

    DATA(LV_ASDASD) = '20241008'.

    lv_string = '20241008'.

    out->write( lv_string ).
    out->write( lv_int ).
    out->write( lv_date ).

  ENDMETHOD.

ENDCLASS.
