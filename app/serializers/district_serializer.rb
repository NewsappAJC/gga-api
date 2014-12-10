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
        white:    object.white,
        black:    object.black,
        native_american: object.native_american,
        asian:    object.asian,
        pacific_islander: object.pacific_islander,
        other:    object.other,
        multi:    object.multi,
        hispanic: object.hispanic
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
