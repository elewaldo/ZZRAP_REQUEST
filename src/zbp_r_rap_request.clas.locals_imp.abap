CLASS lhc_Request DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Request RESULT result.

ENDCLASS.

CLASS lhc_Request IMPLEMENTATION.

  METHOD get_global_authorizations.

  ENDMETHOD.

ENDCLASS.
