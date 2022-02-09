class User < ApplicationRecord
  validates :name, :birthdate, presence: true
  validate :at_least_father_name


  def generate_rfc
    code = RfcGenerator.new(user: self)
    self.rfc = code.to_s
  end

  private

  def at_least_father_name
    if last_name.blank? && second_last_name.blank?
      errors.add(:last_name, "You must provide at least the Father's last name")
    end
  end
end
