class Admin < ApplicationRecord
     # database_authentication, :registable, :recoverable, :rememberble, :validatable
has_secure_password
    has_many :cohorts
    has_many :projects

    validates :email, presence: true, uniqueness: true

    def admin? 
        true
    end
end
