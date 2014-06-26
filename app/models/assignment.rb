class Assignment < ActiveRecord::Base
  before_validation do
    self.assigned = DateTime.now
  end

  validates :due_date, presence: true

  validate :due_date_not_before_assigned, :on => :create

  belongs_to :user
  has_one :complete

  def due_date_not_before_assigned
    if due_date < assigned
      errors.add(:due_date,"Cannot be due before it's assigned")
    end
  end

  def make_complete
    self.assignment_complete = true
  end

  def make_incomplete
    self.assignment_complete = false
  end

end
