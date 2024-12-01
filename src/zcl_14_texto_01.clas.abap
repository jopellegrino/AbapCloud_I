CLASS zcl_14_texto_01 DEFINITION
  PUBLIC

  FINAL

  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_14_texto_01 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    "TEXT SYMBOLS (TEXTO DE MANERA DINAMICA EN MULTIPLES IDIOMAS)(RECUERDA ACTIVAR TAMBIEN EL TEXT-ELEMENT

    out->write( TEXT-001 ).

    out->write( 'This is your first text symbol'(msg) ).             "UN POR SI ACASO EL TEXT-ELEMENT NO ESTA CREADA MUESTRA EL LITERAL
    "CTRL+1 EDITAS

    "FUNCIONES DE DESCRIPCION (ANALIZA EL CONTENIDO DEVOLVIENDO UN NUMERO)

    "FUNCIONES LONGITUD
    DATA lv_string TYPE String VALUE ' LOGALI Local'.

    DATA(lv_num) = strlen( ' lv_string ' ).                          "CONTEO DE CADENA (IGNORA LOS ESPACIOS FINALES)
    out->write( |El tamaño del String es: { lv_num }| ).

    lv_num = numofchar( ' lv_string ' ).
    out->write( |El tamaño del String es 2do: { lv_num }| ).



    "FUNCIONES DE BUSQUEDA
    "CONTEO DE PATRONES

    lv_num = count( val = lv_string sub = 'LO' ).                    "NUMERO DE OCURRENCIAS DE UNA BUSQUEDA DENTRO DE LA CADENA CON CASE SENSITIVE CONJUNTAMENTE
    out->write( |La cantidad de "LO" en "{ lv_string }" (Case Sensitive) es de: { lv_num } | ).

    lv_num = count_any_of( val = lv_string sub = 'LO' ).             "NUMERO DE OCURRENCIAS DE UNA BUSQUEDA DENTRO DE LA CADENA(CASE SENSITIVE) INDIVIDUALMENTE
    out->write( |La cantidad de "L y O" en "{ lv_string }" (Case Sensitive) es de: { lv_num } | ).

    lv_num = count_any_not_of( val = lv_string sub = 'LO' ).         "NUMERO DE POSICIONES QUE NO COINCIDEN CON EL PATRON
    out->write( |La cantidad de Posiciones que no son "L y O" en "{ lv_string }" (Case Sensitive) es de: { lv_num } | ).

    "BUSQUEDA DE POSICION DE PATRON
    lv_num = find( val = lv_string sub = 'LI' ).                     "PRIMERA POSICION EN LA QUE SE ENCUENTRA EL PATRON DENTRO DEL STRING
    out->write( |La 1era Posicion del patron 'LI" en "{ lv_string }" (Case Sensitive) es de : { lv_num } | ).

    lv_num = find_any_of( val = lv_string sub = 'LI' ).              "PRIMERA POSICION EN LA QUE SE ENCUENTRA ALGUN CARACTER DEL PATRON DENTRO DEL STRING
    out->write( |La 1era Posicion del patron 'L ó I" en "{ lv_string }" (Case Sensitive) es de : { lv_num } | ).

    lv_num = find_any_not_of( val = lv_string sub = 'LI' ).          "PRIMERA POSICION EN LA QUE NO SE ENCUENTRA NINGUN CARACTER DEL PATRON
    out->write( |La 1era Posicion en la que no se encuentra el patron 'L ó I" en "{ lv_string }" (Case Sensitive) es de : { lv_num } | ).











    "FUNCIONES DE PROCESAMIENTO ( DEVUELVE OTRA CADENA DE CARACTER MODIFICADA O PATRON)


    "FUNCIONES DE PREDICADO (DEVUELVE UN BOOLEANO EVALUANDO PATRONES)


  ENDMETHOD.

ENDCLASS.
