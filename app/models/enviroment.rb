class Enviroment < ActiveRecord::Base
  belongs_to :project
  belongs_to :issue
  validates_formatting_of :address, using: :url
end
