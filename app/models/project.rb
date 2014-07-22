class Project < ActiveRecord::Base
  has_many :enviroments
  has_many :issues
end
