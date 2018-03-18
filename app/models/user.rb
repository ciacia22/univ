class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
   has_many :contents    

   validates :nome, presence: true
    
end
