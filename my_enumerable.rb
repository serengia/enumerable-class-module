module MyEnumerable
  ERROR_MESSAGE = 'Error: Method requires a block'.freeze

  def all?
    raise Exception, ERROR_MESSAGE unless block_given?

    each_num do |num|
      return false unless yield num
    end
    true
  end

  def any?
    raise Exception, ERROR_MESSAGE unless block_given?

    each_num do |num|
      return true if yield num
    end
    false
  end

  def filter
    raise Exception, ERROR_MESSAGE unless block_given?

    filtered = []
    each_num do |num|
      filtered.push num if yield num
    end
    filtered
  end
end
