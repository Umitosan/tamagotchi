
class Tama

  @@all_Tama = []

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

  define_method(:zzz) do
    "zzzZZZzzz"
  end

  define_singleton_method(:add_tama) do |thistama|
    @@all_Tama.push(thistama)
  end

  define_singleton_method(:return_tama_at_index) do |index|
    @@all_Tama[index]
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
