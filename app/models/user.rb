class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email, :password, :firstname, :lastname
  validates_uniqueness_of :email
  
  has_many :educations
  has_many :experiences

  has_many :reviews 

  has_many :missions 

  has_one_attached :image

  #has_many_attached :pictures
  
end
