class Project < ApplicationRecord
    belongs_to :admin
    has_and_belongs_to_many :students
    belongs_to :course
end
