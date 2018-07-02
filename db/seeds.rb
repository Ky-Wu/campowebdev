case Rails.env
  when "development"
    admin = User.new(email:"admin@example.org",
                     password: "password",
		     password_confirmation: "password",
		     admin: true)
    admin.skip_confirmation!
    admin.save!
    banned_user = User.new(email: "bannedperson@example.org",
                           password: "foobar",
		           password_confirmation: "foobar",
		           banned: true)
    banned_user.skip_confirmation!
    banned_user.save!
    user = User.new(email: "user@example.org",
                    password: "foobar",
		    password_confirmation: "foobar")
    user.skip_confirmation!
    user.save!
  when "production"
  when "test"
end
