class River
  attr_reader :name, :fishes

  def initialize(name)
    @name = name
    @fishes= []

  end

  def get_fish_count
    return @fishes.count
  end

  def add_fish(fish)
    @fishes << fish
  end



end
