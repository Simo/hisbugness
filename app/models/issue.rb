class Issue < ActiveRecord::Base
  belongs_to :project
  has_one :enviroment
end
