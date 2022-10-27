class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :trackable
  
  def strata_plans
    StrataPlan.joins(residential_units: {residents: [:user]}).where(residents: {user_id: id})
  end
end
