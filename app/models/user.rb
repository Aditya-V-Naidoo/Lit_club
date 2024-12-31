class User < ApplicationRecord
  validates :user_name, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true
  VALID_EMIAL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email_id, presence: true,  uniqueness: {case_sensitive: false}, format: {with: VALID_EMIAL_REGEX}
  validates :SQ, presence: true
  validates :AK, presence: true
  has_secure_password
  has_many :literary_works
end