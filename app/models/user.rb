class User < ApplicationRecord
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  PROFILE_TITLE = [
    'Senior Ruby on Rails developer',
    'Full stack Ruby on Rails developer',
    'Junior Ruby on Rails developer',
    'Mid level Ruby on Rails developer'
  ].freeze

  def name
    "#{first_name} #{last_name}".strip
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[country city]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
