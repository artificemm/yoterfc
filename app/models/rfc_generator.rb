class RfcGenerator

  ABCD = ('a'..'z').to_a
  VOWELS = %w(a e i o u)
  CONSONANTS = ABCD - VOWELS
  attr_accessor :user, :date, :rfc

  def initialize(user:)
    @user = user.attributes.slice('name', 'last_name', 'second_last_name')
    @date = user.birthdate
  end

  def rule_12
    @user.map { |k,v| @user[k] = v.gsub!("\'", "") }
  end

  def transliterate
    @user.map { |k,v| @user[k] = I18n.transliterate(v) }
  end

  def basic_form
    a = @user['last_name'].slice(0,2)
    b = @user['second_last_name'].slice(0,1)
    c = @user['name'].slice(0,1)
    d = @date.strftime("%y%m%d")
    @rfc = [a,b,c,d].join
  end

  def to_s
    @rfc.to_s.upcase
  end
end
