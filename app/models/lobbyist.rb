class Lobbyist < ApplicationRecord

  def self.search name
    where("lobbyist_stdrd ilike ?", "%#{name}%").or(where("lobbyist_raw ilike?", "%#{name}%"))
  end
end
