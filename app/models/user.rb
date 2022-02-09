class User < ApplicationRecord
  validates :name, :birthdate, presence: true
  validate :at_least_father_name

  before_save :generate_rfc

  def add_one
    update_attribute(:count, count+1)
  end

  private

  def at_least_father_name
    if last_name.blank? && second_last_name.blank?
      errors.add(:last_name, "You must provide at least the Father's last name")
    end
  end

  def generate_rfc
    code = RfcGenerator.new(user: self)
    self.rfc = code.basic_form if rfc.blank?
  end
end
