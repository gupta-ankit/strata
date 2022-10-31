class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :trackable

  has_many :issues, foreign_key: :reporter_id
  
  def strata_plans
    StrataPlan.joins(residential_units: {residents: [:user]}).where(residents: {user_id: id})
  end

  def issues_for(strata_plan)
    issues.where(strata_plan: strata_plan)
  end

  def name
    self[:name] || email
  end
end
