class Complete < ActiveRecord::Base

  def make_complete
    self.assignment_completed  = true
  end

  def make_incomplete
    self.assignment_completed  = false
  end
end
