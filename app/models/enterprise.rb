class Enterprise < ActiveRecord::Base

  extend FriendlyId

  has_many :relations

  friendly_id :nickname, :use => :slugged

  validates_presence_of :nickname, :slug
  validates :nickname, uniqueness: true
  validates :slug, uniqueness: true

  before_update  :set_slug, on: [:update ]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  protected

  def set_slug
    self.slug = self.nickname.downcase.tr(" ", "-")
  end
end
