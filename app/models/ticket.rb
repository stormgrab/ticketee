class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  attr_accessible :description, :title , :user
  validates :title,:description,:presence => true
  validates :description,:length => {:minimum => 8}
end
