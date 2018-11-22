require './multilinguist.rb'

class QuoteCollector < Multilinguist

  def initialize
    @quotes = []
  end

  #Reader
  def quotes
    @quotes
  end

  #Writer
  def quotes=(new_quote)
    @quotes = new_quote
  end

  def memorize_quote(quote)
    @quotes << quote
    return quote
  end

  def select_random_quote
    return @quotes.sample
  end

end

sam = QuoteCollector.new

sam.memorize_quote("akdljgiejwe")
sam.memorize_quote("skljgdhiowehgo")
sam.memorize_quote("wlkfjqogi")
puts sam.inspect
puts sam.select_random_quote
