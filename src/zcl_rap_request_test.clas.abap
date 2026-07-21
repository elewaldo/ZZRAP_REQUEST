CLASS zcl_rap_request_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_request_test IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    MODIFY ENTITIES OF zr_rap_request
      ENTITY Request
      CREATE FIELDS (
        RequestID
        Title
        Description
        Priority
        Status
      )
      WITH VALUE #(
        (
          %cid        = 'REQ_001'
          RequestID   = '0000000001'
          Title       = 'Analizar error de integración'
          Description = 'La interfaz no procesa determinados mensajes'
          Priority    = 'HIGH'
          Status      = 'OPEN'
        )
      )
    FAILED DATA(lt_failed)
    REPORTED DATA(lt_reported).

    COMMIT ENTITIES
      RESPONSE OF ZR_RAP_REQUEST
        FAILED DATA(lt_failed_commit)
        REPORTED DATA(lt_reported_commit).

    out->write( lt_failed ).
    out->write( lt_reported ).
    out->write( lt_failed_commit ).
    out->write( lt_reported_commit ).

  ENDMETHOD.
ENDCLASS.
