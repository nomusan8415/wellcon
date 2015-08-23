class Device < ActiveRecord::Base

  has_many :tasks, inverse_of: :device, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :state, presence: true
  # validates :polling_time, presence: true


  def doOn
    self.state =  'ON'
  end

  def doOff
    self.state =  'OFF'
  end

=begin
  def self.update_state_all
    Device.all.each do |d|
      d.update_state!
    end
  end
=end

  def update_state!
    time_now = DateTime.now
    Task.all.try(:each) do |task|
      Rails.logger.debug task.inspect
      if task.isOn?
        doOn
        end_time = task.stop_time
      elsif task.isOff? and time_now > end_time
        doOff
      end
      self.save!
    end
  end


def self.state_choices
  [["ON","ON"],
   ["OFF","OFF"],
   ["OTHER","OTHER"]]
end

end
