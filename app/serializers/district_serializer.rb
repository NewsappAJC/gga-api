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
             :gini,
             :pct_owner_occupied,
             :pct_without_insurance

  def race
    {white: object.white, black: object.black}
  end
end
