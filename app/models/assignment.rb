class Assignment < ActiveRecord::Base
  before_validation do
    self.assigned = DateTime.now
  end

  validates :due_date, presence: true

  validate :due_date_not_before_assigned
  belongs_to :user

  def due_date_not_before_assigned
    if due_date < assigned
      errors.add(:due_date,"Cannot be due before it's assigned")
    end
  end

end
