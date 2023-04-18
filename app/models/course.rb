class Course < ApplicationRecord
    enum category: [:android, :fullstack, :web, :datascience]
    
    has_many :projects, dependent: :destroy
    
    validates :name, presence: true
end