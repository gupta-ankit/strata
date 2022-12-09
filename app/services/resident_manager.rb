class ResidentManager
  def self.create_by_email(email:, residential_unit:)
    user = User.find_by_email(email)
    if user.nil?
      user = User.create!(email: email, password: random_password)
    end

    Resident.create!(user: user, residential_unit: residential_unit)
  end

  private

  def self.random_password
    ('A'..'z').to_a.shuffle[0, 8].join
  end
end