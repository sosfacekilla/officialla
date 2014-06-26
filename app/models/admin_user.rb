class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

   #  has_attached_file :avatar, :styles => { 
  	# :medium => "300x300>", :thumb => "50x50>" }

         # has_many :events

         

  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
end

