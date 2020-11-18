# frozen_string_literal: true

module Verification
  def valid?
    check!
  rescue RuntimeError
    false
  end
end
