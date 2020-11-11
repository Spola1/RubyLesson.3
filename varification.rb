module Verification
  def valid?
    check!
  rescue RuntimeError
    false
  end
end
