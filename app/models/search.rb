class Search < ApplicationRecord

    def search_heroes
        heroes = []
   
        if self.minimum_price != nil
            heroes << User.where(["price > ?", minimum_price], is_hero: "true")
        end
        if self.maximum_price != nil
            heroes << User.where(["price < ?", maximum_price], is_hero: "true")
        end
        if self.minimum_intelligence != nil
            heroes << User.where(["intelligence > ?", minimum_intelligence], is_hero: "true")
        end
        if self.minimum_strength != nil
            heroes << User.where(["strength > ?", minimum_strength], is_hero: "true")
        end
        if self.minimum_speed != nil
            heroes << User.where(["speed > ?", minimum_speed], is_hero: "true")
        end
        if self.minimum_durability != nil
            heroes << User.where(["durability > ?", minimum_durability], is_hero: "true")
        end
        if self.minimum_power != nil
            heroes << User.where(["power > ?", minimum_power], is_hero: "true")
        end
        if self.minimum_combat != nil
            heroes << User.where(["price > ?", minimum_combat], is_hero: "true")
        end
        if self.location != ""
            heroes << User.where(["location LIKE ?", location], is_hero: "true")
        end
        heroes.uniq
     
    end

end
