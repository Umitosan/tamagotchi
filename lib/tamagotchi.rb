

class Tama

  @@all_Tama = []

  define_method(:initialize) do |name|
    @name = name
    @lvl = 0
    @alive = true
    @health = 10
    @fed_lvl = 10
    @feed_times = 0
    @play_times = 0
    @birth_time = Time.new()
  end

  define_method(:get_birth_time) do
    @birth_time
  end

  define_method(:time_diff) do
    cur_time = Time.new()
    cur_time.to_i - @birth_time.to_i
  end

  define_method(:play) do
    @fed_lvl -= 1
    if @play_times >= 3
      @play_times = 0
      @lvl += 1
    else
      @play_times += 1
    end
    "it's fun to play"
  end

  define_method(:feed) do
    if @fed_lvl < 10
      @feed_times += 1
      @fed_lvl += 1
    end
    if @feed_times >= 3
      @feed_times = 0
      @lvl += 1
    end
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
