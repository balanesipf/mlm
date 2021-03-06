# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  contact    :string(255)
#  email      :string(255)
#  street_one :string(255)
#  street_two :string(255)
#  city       :string(255)
#  state      :string(255)
#  zip        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ActiveRecord::Base
  has_many :projects
  has_many :jobs, :through => :projects
  
  attr_accessible :name, :phone, :street_one, :street_two, :city, :state, :zip, :contact, :email 
  
  
end
