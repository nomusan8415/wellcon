class Task < ActiveRecord::Base

  belongs_to :device

  validates :name, presence: true, length: { maximum: 50 }
  validates :start_time, presence: true
  validates :stop_time, presence: true


  def isOn?
    time_now = DateTime.now
    end_time = stop_time
    time_now >= start_time and time_now <= stop_time
  end

  def isOff?
    time_now < start_time and time_now > stop_time
  end

end
