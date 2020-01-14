class Bear
  attr_reader :name, :type,

  def initialize(name,type)
    @name = name
    @type = type
    @stomach = []
  end

def bear_count
  return@stomach.count
end

  def bear_eats_fish (river)
    fish = river.fishes[0]
    @stomach << fish
    river.pop()
  end
end
