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

    """"""""""""""""""""""""FUNCIONES DE DESCRIPCION (ANALIZA EL CONTENIDO DEVOLVIENDO UN NUMERO)""""""""""""""""""""""""""""

    "FUNCIONES LONGITUD
    DATA lv_string TYPE String VALUE ' LOGALI Local'.

    DATA(lv_num) = strlen( ' lv_string ' ).                          "CONTEO DE CADENA (IGNORA LOS ESPACIOS FINALES)
    out->write( |El tamaño del String es: { lv_num }| ).

    lv_num = numofchar( ' lv_string ' ).
    out->write( |El tamaño del String es 2do: { lv_num }| ).


    "FUNCIONES DE BUSQUEDA (CONTEO CANTIDAD DE PATRONES QUE COINCIDEN)

    lv_num = count( val = lv_string sub = 'LO' ).                    "NUMERO DE OCURRENCIAS DE UNA BUSQUEDA DENTRO DE LA CADENA CON CASE SENSITIVE CONJUNTAMENTE
    out->write( |La cantidad de "LO" en "{ lv_string }" (Case Sensitive) es de: { lv_num } | ).

    lv_num = count_any_of( val = lv_string sub = 'LO' ).             "NUMERO DE OCURRENCIAS DE UNA BUSQUEDA DENTRO DE LA CADENA(CASE SENSITIVE) INDIVIDUALMENTE
    out->write( |La cantidad de "L y O" en "{ lv_string }" (Case Sensitive) es de: { lv_num } | ).

    lv_num = count_any_not_of( val = lv_string sub = 'LO' ).         "NUMERO DE POSICIONES QUE NO COINCIDEN CON EL PATRON
    out->write( |La cantidad de Posiciones que no son "L y O" en "{ lv_string }" (Case Sensitive) es de: { lv_num } | ).

    "BUSQUEDA DE PRIMERA POSICION DE PATRON
    lv_num = find( val = lv_string sub = 'LI' ).                     "PRIMERA POSICION EN LA QUE SE ENCUENTRA EL PATRON DENTRO DEL STRING
    out->write( |La 1era Posicion del patron 'LI" en "{ lv_string }" (Case Sensitive) es de : { lv_num } | ).

    lv_num = find_any_of( val = lv_string sub = 'LI' ).              "PRIMERA POSICION EN LA QUE SE ENCUENTRA ALGUN CARACTER DEL PATRON DENTRO DEL STRING
    out->write( |La 1era Posicion del patron 'L ó I" en "{ lv_string }" (Case Sensitive) es de : { lv_num } | ).

    lv_num = find_any_not_of( val = lv_string sub = 'LI' ).          "PRIMERA POSICION EN LA QUE NO SE ENCUENTRA NINGUN CARACTER DEL PATRON
    out->write( |La 1era Posicion en la que no coincide con el patron 'L ó I" en "{ lv_string }" (Case Sensitive) es de : { lv_num } | ).


    out->write( |  | ).


    """"""""""""""""""""""""""""FUNCIONES DE PROCESAMIENTO ( DEVUELVE OTRA CADENA DE CARACTER MODIFICADA O PATRON)""""""""""""""""""""""""""""""""""""""
    DATA lv_string2 TYPE string VALUE ' ¡LOGALI GROUP! Welcome to ABAP Cloud Master '.

    "MAYUS minus
    out->write( |TO_UPPER    =  { to_upper( lv_string2 ) } | ).  "CONVERSION DE LA CADENA A MAYUSCULA
    out->write( |TO_LOWER    =  { to_LOWER( lv_string2 ) } | ).  "CONVERSION DE LA CADENA A MINUSCULA
    out->write( |TO_MIXED    =  { to_mixed( lv_string2 ) } | ).  "
    out->write( |FROM_MIXED  =  { from_mixed( lv_string2 ) } | ). "AÑADE UN SEPERADOR DE _ Y CONVIERTE EN MAYUS

    out->write( |  | ).

    "ORDER
    out->write( |REVERSE = { reverse( lv_string2 ) } | ).                                       "INVERTIR TODA LA CADENA
    out->write( |SHIFT_LEFT (places)   = { shift_left(   val = lv_string2 places = 5 ) } | ).   "SE DESPLAZA HACIA LA DERECHA Y BORRA HACIA LA IZQ
    out->write( |SHIFT_RIGHT (places)  = { SHIFT_right(  val = lv_string2 places = 5 ) } | ).   "SE DESPLAZA HACIA LA IZQ Y BORRA HACIA LA DER
    out->write( |SHIFT_LEFT (places)   = { shift_left(   val = lv_string2 circular = 5 ) } | ). "SE DESPLAZA HACIA LA DER Y TOMA LO QUE ESTA A LA IZQ Y LO MANDA AL OTRO LADO DEL STRING (OSEA HACIA LA DER)
    out->write( |SHIFT_RIGHT (places)  = { shift_RIGHT(  val = lv_string2 circular = 5 ) } | ). "SE DESPLAZA HACIA LA IZQ Y TOMA LO QUE ESTA A LA DERECHA Y LO MANDA AL OTRO LADO DEL STRING

    out->write( |  | ).
    "Substring
    out->write( |SUBSTRING          = { substring(         val = lv_string2 off = 9 len = 6 ) } | ). "EXTRAE UN SUBSTRING DESDE LA POSICION 9 Y DE TAMAÑO 6 (SI NO COLOCAS LEN SE TRAE TODO DESDE 9)
    out->write( |SUBSTRING_FROM     = { substring_from(    val = lv_string2 sub = 'ABAP' ) } | ).    "EXTRAE TODO LO QUE ENCUENTRE DESDE LO QUE COLOQUES EN sub
    out->write( |SUBSTRING_AFTER    = { substring_after(   val = lv_string2 sub = 'ABAP' ) } | ).    "EXTRAE TODO LO QUE ESTE DESPUES DEL PATRON (SIN TOMAR EL PATRON)
    out->write( |SUBSTRING_TO       = { substring_to(      val = lv_string2 sub = 'ABAP' ) } | ).    "EXTRAE TODO LO QUE ENCUENTRE ANTES DEL SUB (INCLUYENDO EL SUB)
    out->write( |SUBSTRING_BEFORE   = { substring_before(  val = lv_string2 sub = 'ABAP' ) } | ).    "COMO DICE ARRIBA PERO SIN TOMAR EL SUB

    out->write( |  | ).
    "OTHERS
    out->write( |CONDENSE   = { condense(  val = lv_string2 )  } | ).                     "ELIMINA LOS ESPACIOS REDUNDANTES
    out->write( |REPEAT     = { repeat(    val = lv_string2 occ = 2 )  } | ).             "REPITE UN n VECES LA CADENA
    out->write( |SEGMENT1   = { segment(   val = lv_string2 sep = '!' index = 1 )  } | ). " DIVIDE EL STRING EN DOS BLOQUES CON UN SEPARADOR EN ESTE CASO EL ! (ESTE ES EL BLOQ 1)
    out->write( |SEGMENT2   = { segment(   val = lv_string2 sep = '!' index = 2 )  } | ). "ESTE ES EL BLOQUE 2

    out->write( |  | ).
    out->write( |  | ).

    "FUNCIONES DE PREDICADO (DEVUELVE UN BOOLEANO EVALUANDO PATRONES)


  ENDMETHOD.

ENDCLASS.
