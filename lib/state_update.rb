class  StateUpdate
  def self.run
    Device.all.each do |d|
      d.update_state!
    end
  end
end
