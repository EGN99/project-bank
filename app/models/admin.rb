class Admin < ApplicationRecord
<<<<<<< HEAD
     # database_authentication, :registable, :recoverable, :rememberble, :validatable
has_secure_password
    has_many :cohorts
    has_many :projects

    validates :email, presence: true, uniqueness: true

    def admin? 
        true
    end
end
=======
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
end
>>>>>>> 751a712239ab5681bdd4070b110194329f54e062
