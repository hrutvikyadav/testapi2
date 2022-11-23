class TestObject < ApplicationRecord
  belongs_to :schedule_file
  has_many :items
end
