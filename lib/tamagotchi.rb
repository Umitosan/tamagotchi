
class Tama

  @@all_Tama

  define_method(:initialize) do |name|
    @name = name
    @lvl = 0
    @alive = true
    @health = 10
    @fed_lvl = 10
  end

  define_method(:play) do
    "it's fun to play"
  end

  define_method(:feed) do
    "mmm arigato gozaimasu"
  end

  define_method(:sleep) do
    "zzzZZZzzz"
  end

  define_method(:name) do
    @name
  end

  define_method(:lvl) do
    @lvl
  end

  define_method(:health) do
    @health
  end

  define_method(:alive?) do
    @alive
  end

  define_method(:fed_lvl) do
    @fed_lvl
  end

end
