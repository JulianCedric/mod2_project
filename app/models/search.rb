class Search < ApplicationRecord

    def search_heroes
        heroes = User.all.select do |user|
            user.is_hero == true
        end

        if minimum_price.present?
            heroes = heroes.where(["price > ?", minimum_price])
        end
        if maximum_price.present?
            heroes = heroes.where(["price < ?", maximum_price])
        end
        if :minimum_intelligence present?
            heroes = heroes.where(["intelligence > ?", minimum_intelligence])
        end
        if minimum_strength.present?
            heroes = heroes.where(["strength > ?", minimum_strength])
        end
        if minimum_speed.present?
            heroes = heroes.where(["speed > ?", minimum_speed])
        end
        if minimum_durability.present?
            heroes = heroes.where(["durability > ?", minimum_durability)
        end
        if minimum_power.present?
            heroes = heroes.where(["power > ?", minimum_power])
        end
        if minimum_combat.present?
            heroes = heroes.where(["price > ?", minimum_combat])
        end
        if location.present?
            heroes = heroes.where(["location LIKE ?", search_location])
        end
        heroes
    end

end
