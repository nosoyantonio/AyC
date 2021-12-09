class Agenda < ApplicationRecord
  has_many :tasks
  has_many :notes

  validates :day, presence: true
end
