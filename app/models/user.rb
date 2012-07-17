class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
   has_many :tickets
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids , :counter

  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
end
