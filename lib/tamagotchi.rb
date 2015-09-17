class Tamagotchi
  def initialize(name)
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @date_of_birth = Time.now()
  end
  
  def name()
    @name
  end
  
  def food_level()
    @food_level
  end
  
  def sleep_level()
    @sleep_level
  end
  
  def activity_level()
    @activity_level
  end
  
  def is_alive?()
    if self.food_level() > 0
      true
    else
      false
    end
  end
  
  def set_food_level(level = 0)
    @food_level = level
  end
  
  def time_passes(current_time = Time.now())
    days_elapsed = ((current_time - @date_of_birth) / 84600).to_i()
    if days_elapsed < @food_level
      @food_level = @food_level - days_elapsed
    else
      @food_level = 0
    end
  end
end