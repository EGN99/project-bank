class Course < ApplicationRecord
    enum category: [:android, :fullstack, :web, :datascience]
    has_many :cohorts
    has_many :projects, through: :cohorts
end
