class User < ActiveRecord::Base
	rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :birthday, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_presence_of :login, :email, :birthday
  validates_uniqueness_of :login, :email, :case_sensitive => false

  validates_format_of :login, :with => /^[A-Za-z\d_]+$/
  validates_length_of :login, :within => 5..40

end
