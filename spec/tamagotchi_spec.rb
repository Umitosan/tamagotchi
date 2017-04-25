require "tamagotchi"
require "rspec"
require "pry"


describe(Tama) do

  before() do
    #clear a thing
  end

  my_pet = Tama.new("magtheredon")

  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      expect(my_pet.name()).to(eq("magtheredon"))
      expect(my_pet.lvl()).to(eq(0))
      expect(my_pet.alive?()).to(eq(true))
      expect(my_pet.health()).to(eq(10))
      expect(my_pet.fed_lvl()).to(eq(10))
    end
  end

  describe("#play") do
    it("returns the playful message to it's master") do
      expect(my_pet.play()).to(eq("it's fun to play"))
    end
  end

  describe("#feed") do
    it("returns thank you to it's master") do
      expect(my_pet.feed()).to(eq("mmm arigato gozaimasu"))
    end
  end

  describe("#zzz") do
    it("it sounds like it's sleeping") do
      expect(my_pet.zzz()).to(eq("zzzZZZzzz"))
    end
  end

  #
  # describe("#time_passes") do
  #   it("decreases the amount of food the Tamagotchi has left by 1") do
  #     my_pet = Tamagotchi.new("lil dragon")
  #     my_pet.time_passes()  #decide what trigger you will use to make time pass
  #     expect(my_pet.food_level()).to(eq(9))
  #   end
  # end

end
