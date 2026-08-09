@EndUserText.label: 'AGE Sample RAP Projection'
@ObjectModel.result: #FIRST_ENTITY
define view ZAGE_C_RAP_SAMPLE
  as projection on ZAGE_C_PROJECTION
{
  key Client,
  key Name,
      Description,
      IsActiveEntity
}
