class Issue < ActiveRecord::Base
  belongs_to :project
  has_one :enviroment
  has_one :browser
  has_one :priority
  has_one :complexity
  has_one :user
  has_one :status
end
