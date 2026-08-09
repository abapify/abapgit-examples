@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'AGE Sample CDS View'
define view ZAGE_I_SAMPLE
  as select from zage_tabl
{
  key client,
  key name  as Name,
      description as Description,
      @ObjectModel.virtualElement: true
      cast('X' as abap.char(1)) as IsActiveEntity
}
