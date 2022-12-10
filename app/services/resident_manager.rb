class ResidentManager
  def self.create_by_email(email:, residential_unit:)
    resident = Resident.new(residential_unit: residential_unit)
    user = User.find_by_email(email)
    if user.nil?
      user = User.create(email: email, password: random_password)
      unless user.persisted?
        resident.errors.copy!(user.errors)
        return resident
      end
    end
    resident.user = user
    resident.save
    resident
  end

  private

  def self.random_password
    ('A'..'z').to_a.shuffle[0, 8].join
  end
end