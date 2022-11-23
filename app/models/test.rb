class Test < ApplicationRecord
  belongs_to :cycler
  has_one :schedule_file
  has_many :iv_data
end
