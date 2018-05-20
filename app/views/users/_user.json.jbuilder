json.extract! user, :id, :last_name, :first_name, :id_number, :sex, :cellphone_number, :email, :utype, :line_account, :line_name, :buddhism_exp, :skills, :created_at, :updated_at
json.url user_url(user, format: :json)
