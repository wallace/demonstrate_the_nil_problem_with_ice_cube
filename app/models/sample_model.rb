class SampleModel < ActiveRecord::Base
  serialize :schedule, IceCube::Schedule
end
