class DistrictSerializer < ActiveModel::Serializer
  attributes :id,
             :district_type,
             :district_number,
             :total_population,
             :race,
             :median_age,
             :pct_georgia_born,
             :pct_college_grad,
             :median_household_income,
             :income_distribution,
             :gini,
             :pct_owner_occupied,
             :pct_without_health_insurance

  def race
    {
        white:    Float(object.white) / Float(object.total_population) * 100,
        black:    Float(object.black) / Float(object.total_population) * 100,
        asian:    Float(object.asian) / Float(object.total_population) * 100,
        other:    ( Float(object.native_american) + Float(object.pacific_islander) + Float(object.other) ) / Float(object.total_population) * 100,
        multi:    Float(object.multi) / Float(object.total_population) * 100,
        hispanic: Float(object.hispanic) / Float(object.total_population) * 100
    }
  end

  def income_distribution
    {
      first:  object.income_share_1,
      second: object.income_share_2,
      third:  object.income_share_3,
      fourth: object.income_share_4,
      fifth:  object.income_share_5
    }
  end
end
