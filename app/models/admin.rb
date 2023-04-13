class Admin < ApplicationRecord
    devise :database_authentication, :registable, :recoverble, :rememberble, :validatable

    has_many :cohorts
    has_many :projects

    validates :email, presence: true, uniqueness: true

    def admin? 
        true
    end
end
