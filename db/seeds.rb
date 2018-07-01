case Rails.env
  when "development"
    user = User.new(email:"kyle.wu19@auhsdschools.org",
                password: "jesuschrist",
		password_confirmation: "jesuschrist")
    user.skip_confirmation!
    user.save!
  when "production"
  when "test"
end
