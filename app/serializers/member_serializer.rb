class MemberSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :name_first, :name_last, :name_middle,
             :name_nickname, :district_type, :district_number,
             :party, :title, :birthday, :education, :occupation,
             :religion, :spouse, :cellphone,:bio,

             :address_city, :address_state, :address_street,
             :address_zip, :address_email, :address_phone,

             :district_address_city, :district_address_state,
             :district_address_street, :district_address_zip,
             :district_address_email, :district_address_phone,
             :bill_count, :session_count, :batting_average,
             :vacant
end
