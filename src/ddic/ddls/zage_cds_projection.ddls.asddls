@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'AGE Sample CDS Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view ZAGE_C_PROJECTION
  as select from ZAGE_I_SAMPLE
{
  key client,
  key name,
      description,
      IsActiveEntity
}
