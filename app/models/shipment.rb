class Shipment < ApplicationRecord
  has_many :histories, dependent: :destroy
  def self.search(search)
    if search.present?
      # where("trackingnumber @@ :q", q: search)
      where("trackingnumber = ?", search)
    else
      scoped
    end
  end
end
