class ScheduleFile < ApplicationRecord
  belongs_to :test
  has_one :test_object
end
