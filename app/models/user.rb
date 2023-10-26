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
end
