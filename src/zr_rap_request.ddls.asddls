@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Solicitud técnica'
define root view entity ZR_RAP_Request
  as select from zrap_request
{
  key request_uuid          as RequestUUID,
      request_id            as RequestID,
      title                 as Title,
      description           as Description,
      priority              as Priority,
      status                as Status,

      created_by            as CreatedBy,
      created_at            as CreatedAt,
      last_changed_by       as LastChangedBy,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt
}
