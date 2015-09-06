class Enterprise < ActiveRecord::Base
  extend FriendlyId
  has_many :relations
  friendly_id :nickname, :use => :slugged
  validates_presence_of :nickname, :slug
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
