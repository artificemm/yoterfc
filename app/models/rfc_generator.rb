class RfcGenerator

  ABCD = ('a'..'z').to_a
  VOWELS = %w(a e i o u)
  CONSONANTS = ABCD - VOWELS
  attr_accessor :user, :name, :last_name, :second_last_name, :birthdate, :rfc

  def initialize(user:)
    user = user
    name = user.name
    last_name = user.last_name
    second_last_name = user.second_last_name
    birthdate = user.birthdate
  end

  def rule_12
    @user.map { |k,v| @user[k] = v.gsub!("\'", "") }
  end

  def transliterate
    @user.map { |k,v| @user[k] = I18n.transliterate(v) }
  end

  def basic_form
    a = last_name.slice(0,2) unless last_name.blank?
    b = second_last_name.slice(0,1) unless second_last_name.blank?
    c = name.slice(0,1) unless name.blank?
    d = birthdate.strftime("%y%m%d") unless birthdate.blank?
    rfc = [a,b,c,d].join.upcase
  end

  # def to_s
  #   rfc.to_s.upcase
  # end
end
