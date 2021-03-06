# frozen_string_literal: true

# controllers
class MethodController < ApplicationController
  def input; end

  def rooting(a_argument)
    x_current = a_argument
    res = 0
    @steps = []
    loop do
      x_current = 0.5 * (x_current + a_argument / x_current)
      res = x_current
      @steps << res
      break if (x_current**2 - a_argument) / a_argument < 0.001
    end
    res
  end

  def view
    v1 = params[:v1].to_i
    @result = (rooting(v1) if v1.to_s =~ /^[-+]?[0-9]*\.?[0-9]+$/ && v1.positive?)
  end
end
