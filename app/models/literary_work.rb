class LiteraryWork < ApplicationRecord
  validates :title, presence: true
  validates :work_type, presence: true
  validates :literary_work, presence: true
  belongs_to :users
end